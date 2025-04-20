from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .forms import AddSupervisorForm,LoginForm,EditSupervisorForm,AddStudentForm,EditStudentForm,EditAcademicStudentLevel
from .models import  StudentProfile,CustomUser,SupervisorProfile
from academics.models import Students_Academic_Levels
from django.contrib.auth.decorators import login_required
from django.contrib import messages
import os
from .decorators import is_supervisor
from .filters import CustomUserFilter

# Create your views here.

#--------------------------------Home page---------------------------

def home(request):
    
    return render(request, 'home.html')


#--------------------------------Accounts Management---------------------------
def login(request):
    if request.user.is_authenticated:
        messages.info(request, 'أنت مسجل دخول بالفعل.')
        return redirect('accounts:home')  #
        
    
    form = LoginForm(request, data=request.POST or None)
    if request.method == 'POST' and form.is_valid():
        auth_login(request, form.get_user())
        return redirect('accounts:home')  # توجيه المستخدم إلى الصفحة الرئيسية بعد تسجيل الدخول

    return render(request, 'login.html', {'form': form})  # عرض الفورم مع الأخطاء إن وجدت


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
        if request.method == "POST":
            form = AddSupervisorForm(request.POST, request.FILES)
            try:
                if form.is_valid():
                    form.save()
                    messages.info(request, 'تم اضافة المشرف بنجاح')
                    return redirect('accounts:supervisor_list')
            except Exception as e:
                messages.info(request, 'حصلت مشكلة ولم يتم اضافة مشرف'+str(e))
                return redirect ('accounts:supervisor_list')
        else:
            form = AddSupervisorForm()
        return render(request, 'supervisor_add.html', {'form': form})


@login_required
@is_supervisor
def supervisor_delete(request,pk):
    try:
        supervisor = get_object_or_404(CustomUser, pk=pk)
        if supervisor.user_type==CustomUser.USER_TYPE_SUPERVISOR:
            if supervisor.image:
                image_path=supervisor.image.path
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
    
    return render(request,'supervisor_search.html', {'myfilter': myfilter})




#-----------------------------Student Management------------------------------
@login_required
def student_management(request):
    return render(request,'student_management.html')

@login_required
@is_supervisor
def student_add(request):
    initial_data = {'add_by': request.user.supervisorprofile}
    if request.method=='POST':
        form =AddStudentForm(request.POST,request.FILES,initial=initial_data)
        try:
            if form.is_valid():
                form.save()
                messages.info(request, 'تم اضافة طالب بنجاح')
                return redirect('accounts:student_list')
            else:
                messages.warning(request, 'البيانات غير صالحة، الرجاء التحقق من الحقول.')
        except Exception as e:
                messages.info(request, 'حصلت مشكلة ولم يتم اضافة طالب'+str(e))
        return render(request, 'student_add.html', {'form': form})

    else:
        form = AddStudentForm(initial=initial_data)
        return render(request, 'student_add.html', {'form': form})


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
    user = get_object_or_404(CustomUser, pk=pk)
    # 1) جلب StudentProfile
    try:
        profile = user.StudentProfile
    except StudentProfile.DoesNotExist:
        messages.error(request, 'الملف الشخصي للطالب غير موجود')
        return redirect('accounts:student_list')

    # 2) جلب سجل المستوى الأكاديمي إن وجد

    # 3) تحضير dict للـ initial
    initial = {
        'section': profile.section,
        'date_joining_sections': profile.date_joining_sections,
    }

    # 4) إنشاء الفورم مع instance و initial
    form = EditStudentForm(
        request.POST or None,
        request.FILES or None,
        instance=user,
        initial=initial
    )

    if request.method == 'POST':
        if form.is_valid():
            try:
                # حذف الصورة القديمة إذا تم رفع صورة جديدة
                if 'image' in request.FILES and user.image:
                    import os
                    if os.path.exists(user.image.path):
                        os.remove(user.image.path)

                form.save(supervisor=request.user.supervisorprofile)
                messages.success(request, 'تم تعديل بيانات الطالب بنجاح')
                return redirect('accounts:student_list')
            except Exception as e:
                form.add_error(None, f'حدث خطأ أثناء حفظ البيانات: {e}')
        else:
            messages.error(request, 'تأكد من صحة البيانات المدخلة')

    return render(request, 'student_edit.html', {
        'form': form,
    })

@login_required
@is_supervisor
def student_search(request):
    students=CustomUser.objects.filter(user_type=CustomUser.USER_TYPE_STUDENT)
    myfilter = CustomUserFilter(request.GET, queryset=students)
    
    return render(request,'student_search.html', {'myfilter': myfilter})


@login_required
@is_supervisor
def student_details(request,pk):
    try:
        student=CustomUser.objects.get(pk=pk)
    except CustomUser.DoesNotExist:
        messages.error(request,f"الطالب برقم المعرف {pk} غير موجود")
        return redirect('accounts:student_list')
    return render(request,'student_detail.html',{'user':student})



# -----------------------delete level form student-------------------------
@login_required
@is_supervisor
def student_academic_level_delete(request,pk):
    
    try:
        student_level=get_object_or_404(Students_Academic_Levels,pk=pk)
        student_level.delete()
        student_pk=student_level.student.user.pk
        messages.success(request,'تم حذف سجل الطالب')
        return redirect('accounts:student_details',pk=student_pk)
    except Students_Academic_Levels.DoesNotExist:
        messages.error(request,'السجل المطلوب غير موجود')
        return redirect('accounts:student_details',pk=student_pk)

# -----------------------edit level form student-------------------------

@login_required
@is_supervisor
def student_edit_academic__level(request,pk,level):
    try:
        student=CustomUser.objects.get(pk=pk)
        student_level=Students_Academic_Levels.objects.get(pk=level)
    except Students_Academic_Levels.DoesNotExist:
        messages.error(request, f'سجل المستوى الأكاديمي لهذا الطالب {student.full_name} غير موجود')
        return redirect('accounts:student_details',pk=pk)
    form=EditAcademicStudentLevel(
        request.POST or None,
        instance=student_level
    )
    try:
        if request.method == 'POST':
            if form.is_valid():
                form.save()
                messages.success(request,'تم تعديل مستوى الطالب')
                return redirect('accounts:student_details',pk=pk)
            else:
                messages.error(request, 'تأكد من صحة البيانات المدخلة')
    except Exception as e:
                form.add_error(None, f'حدث خطأ أثناء تعديل البيانات: {e}')
    return render(request,'student_edit_level.html',{'form': form,'student':student})


# -----------------------add level form student-------------------------

@login_required
@is_supervisor
def student_add_academic_level(request,pk):
    try:
        student=CustomUser.objects.get(pk=pk)
    except CustomUser.DoesNotExist:
        messages.error(request,'الطالب غير موجود')
        return redirect('accounts:student_detail',pk=pk)