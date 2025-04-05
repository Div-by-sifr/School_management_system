from django.shortcuts import render,redirect,get_object_or_404
from django.http import HttpResponse
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .forms import AddSupervisorForm,LoginForm,EditSupervisorForm,EditUserForm, StudentProfileForm, StudentLevelFormSet
from .models import GuardianProfile, StudentProfile,TeacherProfile,CustomUser,SupervisorProfile
from academics.models import Students_Academic_Levels
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




#-----------------------------Supervisor Management------------------------------

@login_required
@is_supervisor
def supervisor_list(request):
    supervisors=SupervisorProfile.objects.all()
    
    return render(request, 'supervisor_list.html', {'supervisors':supervisors})

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
                form.save(commit=False)
                if 'image' in request.FILES and supervisor.image:
                    if os.path.exists(image_path):
                        os.remove(image_path)
                form.save()
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




#-----------------------------Student Management------------------------------
@login_required
def student_management(request):
    return render(request,'student_management.html')

@login_required
@is_supervisor
def student_add(request):
    pass

@login_required
def student_list(request):
    students=StudentProfile.objects.all()
    
    return render(request, 'student_list.html', {'students':students})

@login_required
@is_supervisor
def student_delete(request,pk):
    try:
        student = get_object_or_404(CustomUser, pk=pk)
        if student.user_type==CustomUser.USER_TYPE_STUDENT:
            if student.image:
                image_path=student.image.path
                print(image_path)
                if os.path.exists(image_path):
                    if os.path.isfile(image_path):
                        os.remove(image_path)

            messages.info(request, 'تم الحذف بنجاح')
            student.delete()
            return redirect('accounts:student_list')
    except Exception as e:  
        messages.info(request, 'حصلت مشكلة ولم يتم الحذف'+str(e))
        return redirect ('accounts:student_list')


@login_required
@is_supervisor
def student_edit(request, pk):
    student_profile = get_object_or_404(StudentProfile, pk=pk)
    user = student_profile.user
    image_path=user.image.path
    user_form    = EditUserForm(request.POST or None, request.FILES or None, instance=user)
    profile_form = StudentProfileForm(request.POST or None, instance=student_profile)
    level_formset = StudentLevelFormSet(request.POST or None, instance=student_profile)
    try:
        if request.method == 'POST':
            
            if user_form.is_valid() and profile_form.is_valid() and level_formset.is_valid():
                user_form.save(commit=False)
                print(image_path)
                if 'image' in request.FILES and user.image:
                        if os.path.exists(image_path):
                            os.remove(image_path)
                user_form.save()
                profile_form.save()
                level_formset.save()
                messages.success(request, 'تم التعديل بنجاح')
                return redirect('accounts:student_list')
            else :
                messages.success(request, 'تأكد من الحقول')
                
    except Exception as e:
        messages.error(request, 'حصلت مشكلة اثناء التعديل: '+str(e))
        return redirect('accounts:student_list')
    
    return render(request, 'student_edit.html', {
        'user_form': user_form,
        'profile_form': profile_form,
        'level_formset': level_formset,
    })