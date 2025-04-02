from django.shortcuts import render,redirect,get_object_or_404
from django.http import HttpResponse
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .forms import AddSupervisorForm,LoginForm
from .models import GuardianProfile, StudentProfile,TeacherProfile,CustomUser,SupervisorProfile
from django.contrib.auth.decorators import login_required
from django.contrib import messages
import os
# Create your views here.


def home(request):
    
    return render(request, 'home.html')

def login(request):
    if request.user.is_authenticated:
        messages.info(request, 'أنت مسجل دخول بالفعل.')
        return redirect('accounts:home')  #

    
    form = LoginForm(request.POST or None)  # إنشاء الفورم سواءً كانت الطلبية POST أو GET
    if request.method == 'POST':
        if form.is_valid():
            user = form.get_user()
            auth_login(request, user)
            return redirect('accounts:home')  # توجيه المستخدم إلى الصفحة الرئيسية بعد تسجيل الدخول

    return render(request, 'login.html', {'form': LoginForm()})  # عرض الفورم مع الأخطاء إن وجدت
@login_required
def logout(request):
    auth_logout(request)
    return redirect('accounts:home') 

def signup(request):
    form=AddSupervisorForm()
    if request.method == 'POST':
        form=AddSupervisorForm(request.POST, request.FILES)
        if form.is_valid():
            temp=form.save(commit=False)
            user_type=temp.user_type
            
            if user_type==CustomUser.USER_TYPE_SUPERVISOR:
                temp.is_staff=True
                temp.is_superuser=True
                temp.save()
                SupervisorProfile.objects.create(user=temp)
            auth_login(request, temp)
            return redirect('home')
    return render(request, 'register.html',{'form':form})

@login_required

def create_Student(request):
    pass

@login_required
def supervisor_list(request):
    supervisors=SupervisorProfile.objects.all()
    
    return render(request, 'supervisors_list.html', {'supervisors':supervisors})

@login_required
def supervisor_management(request):
    return render(request,'supervisor_management.html')


@login_required
def supervisor_add(request):
    if request.method == "POST":
        form = AddSupervisorForm(request.POST, request.FILES)
        if form.is_valid():
            temp = form.save(commit=False)
            temp.user_type = CustomUser.USER_TYPE_SUPERVISOR
            temp.is_staff = True
            temp.is_superuser = True
            temp.save()
            SupervisorProfile.objects.create(user=temp)
            messages.info(request, 'تم الحذف بنجاح')
            return redirect('accounts:supervisor_list')
    else:
        form = AddSupervisorForm()
    return render(request, 'supervisor_add.html', {'form': form})

def supervisor_delete(request,pk):
    try:
        supervisor = get_object_or_404(CustomUser, pk=pk)
        if supervisor.image:
            image_path=supervisor.image.path
            if os.path.exists(image_path):
                if os.path.isfile(image_path):
                    os.remove(image_path)
        
        messages.info(request, 'تم الحذف بنجاح')
        supervisor.delete()
        return redirect('accounts:supervisor_list')
    except:
        return redirect ()