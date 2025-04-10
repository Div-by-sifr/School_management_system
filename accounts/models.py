from django.db import models
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin, BaseUserManager
from datetime import date
from datetime import datetime

# مدير المستخدمين المخصص لإنشاء المستخدمين والمشرفين
class CustomUserManager(BaseUserManager):
    def create_user(self, phone_number, user_type, password=None, **extra_fields):
        if not phone_number:
            raise ValueError('يجب إدخال رقم الهاتف')
        if user_type not in [CustomUser.USER_TYPE_STUDENT, CustomUser.USER_TYPE_TEACHER, CustomUser.USER_TYPE_GUARDIAN]:
            raise ValueError('نوع المستخدم غير صحيح')
        extra_fields.setdefault('is_active', True)
        user = self.model(phone_number=phone_number, user_type=user_type, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, phone_number, user_type, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        if extra_fields.get('is_staff') is not True:
            raise ValueError('يجب أن يكون المشرف هو staff')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('يجب أن يكون المشرف هو superuser')
        return self.create_user(phone_number, user_type, password, **extra_fields)



class CustomUser(AbstractBaseUser, PermissionsMixin):
    USER_TYPE_STUDENT = 'student'
    USER_TYPE_TEACHER = 'teacher'
    USER_TYPE_GUARDIAN = 'guardian'
    USER_TYPE_SUPERVISOR = 'supervisor'
    USER_TYPE_CHOICES = [
        (USER_TYPE_STUDENT, 'طالب'),
        (USER_TYPE_TEACHER, 'معلم'),
        (USER_TYPE_GUARDIAN, 'ولي أمر'),
        (USER_TYPE_SUPERVISOR, 'مشرف'),
    ]
    phone_number = models.CharField(max_length=15, unique=True)
    user_type = models.CharField(max_length=10, choices=USER_TYPE_CHOICES)
    
    # حقول مشتركة لجميع المستخدمين
    full_name = models.CharField(max_length=255)
    birthday = models.DateField(null=True, blank=True)
    gender = models.CharField(max_length=1, choices=[('M', 'ذكر'), ('F', 'انثى')])
    address = models.TextField(max_length=255)
    email = models.EmailField(unique=True, null=True, blank=True)
    date_joined = models.DateTimeField(auto_now_add=True)
    image=models.ImageField(upload_to=r'images/%y/%m/%d/',blank=True, null=True)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    
    USERNAME_FIELD = 'phone_number'
    REQUIRED_FIELDS = ['full_name', 'user_type']
    
    objects = CustomUserManager()
    
    def __str__(self):
        return self.full_name
    @property
    def age(self):
        today=date.today()
        return today.year - self.birthday.year - ((today.month, today.day) < (self.birthday.month, self.birthday.day))



class SupervisorProfile(models.Model):
    user=models.OneToOneField(
        CustomUser,
        on_delete=models.CASCADE,
        limit_choices_to={'user_type': CustomUser.USER_TYPE_SUPERVISOR}
    )
    def __str__(self):
        return f"{self.user.full_name}"


class StudentProfile(models.Model):
    user = models.OneToOneField(
        CustomUser,
        on_delete=models.CASCADE,
        limit_choices_to={'user_type': CustomUser.USER_TYPE_STUDENT}
    )
    # حقل مرتبط بعملية ربط الطالب بالقسم (Section) الموجود بتطبيق الأكاديميات (مثلاً 'academics.Section')
    section = models.ForeignKey('academics.Section', on_delete=models.SET_NULL, null=True, blank=True)
    date_joining_sections = models.DateTimeField(null=True, blank=True)
    add_by = models.ForeignKey(SupervisorProfile, default=None,on_delete=models.CASCADE)
    
    def __str__(self):
        return f"{self.user.full_name}"
    def latest_academic_record(self):
        try:
            # جلب السجل الذي يحتوي على is_current=True
            current_level = self.student_level.filter(is_current=True).first()
    
            if current_level:
                print(f"المستوى الأكاديمي الحالي: {current_level}")
            else:
                print("لا يوجد مستوى أكاديمي حالي لهذا الطالب.")
            
            return current_level
        except Exception as e:
            print(f"حدث خطأ أثناء جلب المستوى الأكاديمي الحالي: {e}")
            return None




# نموذج بروفايل المعلم
class TeacherProfile(models.Model):

    user = models.OneToOneField(
        CustomUser,
        on_delete=models.CASCADE,
        limit_choices_to={'user_type': CustomUser.USER_TYPE_TEACHER}
    )
    add_by = models.ForeignKey(SupervisorProfile, default=None,on_delete=models.CASCADE)
    def __str__(self):
        return  self.user.full_name


# نموذج بروفايل ولي الأمر
class GuardianProfile(models.Model):
    user = models.OneToOneField(
        CustomUser,
        on_delete=models.CASCADE,
        limit_choices_to={'user_type': CustomUser.USER_TYPE_GUARDIAN}
    )
    guardian_type = models.CharField(max_length=50, null=True, blank=True)
    add_by = models.ForeignKey(SupervisorProfile, default=None,on_delete=models.CASCADE)
    
    def __str__(self):
        return self.user.full_name


# نموذج لربط الطالب بولي الأمر (علاقة Many-to-Many عبر النموذج)
class StudentGuardian(models.Model):
    student = models.ForeignKey(StudentProfile, on_delete=models.CASCADE)
    guardian = models.ForeignKey(GuardianProfile, on_delete=models.CASCADE)
    
    def __str__(self):
        return f"{self.student.user.full_name} - {self.guardian.user.full_name}"




