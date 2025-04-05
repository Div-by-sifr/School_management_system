from django.shortcuts import render,redirect,get_object_or_404
from django.http import HttpResponse
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .forms import AddSupervisorForm,LoginForm,EditSupervisorForm
from .models import GuardianProfile, StudentProfile,TeacherProfile,CustomUser,SupervisorProfile
from django.contrib.auth.decorators import login_required
from django.contrib import messages
import os
from .decorators import is_supervisor
from .filters import CustomUserFilter
# Create your views here.


def home(request):
    
    return render(request, 'home.html')

def login(request):
    if request.user.is_authenticated:
        messages.info(request, 'أنت مسجل دخول بالفعل.')
        return redirect('accounts:home')  #
        
    
    messages.info(request, 'قم بستجيل الدخول اولاً')
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
@is_supervisor
def create_Student(request):
    pass

@login_required
@is_supervisor
def supervisor_list(request):
    supervisors=SupervisorProfile.objects.all()
    
    return render(request, 'supervisors_list.html', {'supervisors':supervisors})

@login_required
@is_supervisor
def supervisor_management(request):
    return render(request,'supervisor_management.html')


@login_required
@is_supervisor
def supervisor_add(request):
    try:
        if request.method == "POST":
            form = AddSupervisorForm(request.POST, request.FILES)
            if form.is_valid():
                temp = form.save(commit=False)
                temp.user_type = CustomUser.USER_TYPE_SUPERVISOR
                temp.is_staff = True
                temp.is_superuser = True
                temp.save()
                SupervisorProfile.objects.create(user=temp)
                messages.info(request, 'تم اضافة المشرف بنجاح')
                return redirect('accounts:supervisor_list')
        else:
            form = AddSupervisorForm()
        return render(request, 'supervisor_add.html', {'form': form})
    except Exception as e:
        messages.info(request, 'حصلت مشكلة ولم يتم اضافة مشرف'+str(e))
        return redirect ('accounts:supervisor_list')

@login_required
@is_supervisor
def supervisor_delete(request,pk):
    try:
        supervisor = get_object_or_404(CustomUser, pk=pk)
        if supervisor.user_type==CustomUser.USER_TYPE_SUPERVISOR:
            if supervisor.image:
                image_path=supervisor.image.path
                print(image_path)
                if os.path.exists(image_path):
                    if os.path.isfile(image_path):
                        os.remove(image_path)

            messages.info(request, 'تم الحذف بنجاح')
            supervisor.delete()
            return redirect('accounts:supervisor_list')
    except Exception as e:  
        messages.info(request, 'حصلت مشكلة ولم يتم الحذف'+str(e))
        return redirect ('accounts:supervisor_list')


@login_required
@is_supervisor
def supervisor_edit(request, pk):
    supervisor = get_object_or_404(CustomUser, pk=pk)
    if request.method == "POST":
        image_path = supervisor.image.path
        form = EditSupervisorForm(request.POST, request.FILES, instance=supervisor)
        if form.is_valid():
            try:
                temp = form.save(commit=False)
                if 'image' in request.FILES and supervisor.image:
                    if os.path.exists(image_path):
                        os.remove(image_path)
                temp.save()
                messages.info(request, 'تم تعديل بيانات المشرف بنجاح')
                return redirect('accounts:supervisor_list')
            except Exception as e:
                messages.error(request, 'حصلت مشكلة أثناء التعديل: ' + str(e))
        else:
            messages.error(request, 'يرجى تصحيح الأخطاء في النموذج.')
    else:
        form = EditSupervisorForm(instance=supervisor)
    return render(request, 'supervisor_edit.html', {'form': form})

@login_required
@is_supervisor
def supervisor_search(request):
    supervisors = CustomUser.objects.filter(user_type=CustomUser.USER_TYPE_SUPERVISOR)

    myfilter = CustomUserFilter(request.GET,queryset=supervisors)
    supervisors=myfilter.qs
    
    return render(request,'supervisor_search.html', {'myfilter': myfilter})
    