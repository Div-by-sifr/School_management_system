from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import CustomUser,StudentProfile,SupervisorProfile
from django.contrib.auth import authenticate
from django.utils.safestring import mark_safe
from academics.models import Section,Students_Academic_Levels,AcademicLevel
import re
from django import forms
from django.contrib.auth.forms import UserCreationForm,UserChangeForm
from django.forms.widgets import HiddenInput


class AddSupervisorForm(UserCreationForm):
    full_name = forms.CharField(
        label='الاسم الكامل',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    gender=forms.ChoiceField(
        label="الجنس",
        choices=[('M', 'ذكر'), ('F', 'انثى')],
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        label='البريد الإلكتروني',
        widget=forms.EmailInput(attrs={'class': 'form-control'})
    )
    phone_number = forms.CharField(
        label='رقم الجوال',
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'dir': 'ltr',
            'type': 'tel',
            'pattern': '[0-9]*',
            'inputmode': 'numeric',
            'oninput': "this.value=this.value.replace(/[^0-9]/g,'')",
            'maxlength': '15',
        })
    )
    password1 = forms.CharField(
        label='كلمة المرور',
        widget=forms.PasswordInput(attrs={'class': 'form-control'}),
        help_text=mark_safe(
        "<ul>"
        "<li>لا يمكن أن تكون كلمة المرور الخاصة بك مشابهة جدًا لمعلوماتك الشخصية الأخرى.</li>"
        "<li>يجب أن تحتوي كلمة المرور الخاصة بك على 8 أحرف على الأقل.</li>"
        "<li>لا يمكن أن تكون كلمة المرور الخاصة بك كلمة مرور شائعة الاستخدام.</li>"
        "<li>لا يمكن أن تكون كلمة المرور الخاصة بك رقمية بالكامل.</li>"
        "</ul>"
        )
    )
    password2 = forms.CharField(
        label='تأكيد كلمة المرور',
        widget=forms.PasswordInput(attrs={'class': 'form-control'}),
        help_text=mark_safe(
        "<ul>"
            '<li> أدخل نفس كلمة المرور السابقة للتحقق. </li>'
        "</ul>"
            ) 
        )
    address = forms.CharField(
        label='العنوان',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    birthday = forms.DateField(
        label='تاريخ الميلاد',
        widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
    )
    image = forms.ImageField(
        label='الصورة',
        widget=forms.FileInput(attrs={'class': 'form-control'})
    )

    class Meta:
        model = CustomUser
        fields = ('full_name','gender', 'email', 'phone_number', 'password1', 'password2', 'birthday','address', 'image')

    def clean_email(self):
        email = self.cleaned_data.get("email")
        if CustomUser.objects.filter(email=email).exists():
            raise forms.ValidationError("هذا البريد الإلكتروني مستخدم من قبل")
        return email

    def clean_phone_number(self):
        phone_number = self.cleaned_data.get("phone_number")
        if CustomUser.objects.filter(phone_number=phone_number).exists():
            raise forms.ValidationError("رقم الجوال مستخدم من قبل")
        return phone_number

    def clean_password1(self):
        password1 = self.cleaned_data.get("password1")
        # التحقق من طول كلمة المرور
        if len(password1) < 8:
            raise forms.ValidationError("يجب أن تكون كلمة المرور 8 أحرف على الأقل")
        # التحقق من احتواء كلمة المرور على حرف واحد على الأقل
        if not re.search(r'[A-Za-z]', password1):
            raise forms.ValidationError("يجب أن تحتوي كلمة المرور على حرف واحد على الأقل")
        # التحقق من احتواء كلمة المرور على رقم واحد على الأقل
        if not re.search(r'\d', password1):
            raise forms.ValidationError("يجب أن تحتوي كلمة المرور على رقم واحد على الأقل")
        return password1

    def clean_password2(self):
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2:
            if password1 != password2:
                raise forms.ValidationError("كلمتا المرور غير متطابقتين")
        return password2
    def save(self, commit=True):
        user = super().save(commit=False)
        user.user_type = CustomUser.USER_TYPE_SUPERVISOR
        if commit:
            user.save()
            SupervisorProfile.objects.create(user=user)
        return user
class LoginForm(forms.Form):
    phone_number = forms.CharField(
        label='رقم الجوال', 
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'dir': 'ltr',
            'type': 'tel',
            'pattern': '[0-9]*',
            'inputmode': 'numeric',
            'oninput': "this.value=this.value.replace(/[^0-9]/g,'')",
            'maxlength': '15',
        }))
    password = forms.CharField(label="كلمة المرور", widget=forms.PasswordInput(attrs={'class': 'form-control'}))

    def clean(self):
        cleaned_data = super().clean()
        phone_number = cleaned_data.get("phone_number")
        password = cleaned_data.get("password")

        if phone_number and password:
            user = authenticate(username=phone_number, password=password)
            if user is None:
                raise forms.ValidationError("رقم الجوال أو كلمة المرور غير صحيحة.")
            self.user = user  # تخزين المستخدم لاستخدامه لاحقًا
        return cleaned_data

    def get_user(self):
        return self.user


class EditSupervisorForm(UserChangeForm):
    password = None
    full_name = forms.CharField(
        label='الاسم الكامل',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    gender=forms.ChoiceField(
        label="الجنس",
        choices=[('M', 'ذكر'), ('F', 'انثى')],
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        label='البريد الإلكتروني',
        widget=forms.EmailInput(attrs={'class': 'form-control'})
    )
    phone_number = forms.CharField(
        label='رقم الجوال',
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'dir': 'ltr',
            'type': 'tel',
            'pattern': '[0-9]*',
            'inputmode': 'numeric',
            'oninput': "this.value=this.value.replace(/[^0-9]/g,'')",
            'maxlength': '15',
        })
    )
  
    address = forms.CharField(
        label='العنوان',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    birthday = forms.DateField(
        label='تاريخ الميلاد',
        widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
    )
    image = forms.ImageField(
        label='الصورة',
        widget=forms.FileInput(attrs={'class': 'form-control'})
    )

    class Meta:
        model = CustomUser
        fields = ['full_name','gender', 'email', 'phone_number','birthday','address', 'image']

    def clean_email(self):
        email = self.cleaned_data.get("email")  
        user=self.instance.pk
        if CustomUser.objects.filter(email=email).exclude(pk=user).exists():
            raise forms.ValidationError("هذا البريد الإلكتروني مستخدم من قبل")
        return email

    def clean_phone_number(self):
        phone_number = self.cleaned_data.get("phone_number")
        user=self.instance.pk
        if CustomUser.objects.filter(phone_number=phone_number).exclude(pk=user).exists():
            raise forms.ValidationError("رقم الجوال مستخدم من قبل")
        return phone_number









class AddStudentForm(UserCreationForm):
    full_name = forms.CharField(
        label='الاسم الكامل',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    gender = forms.ChoiceField(
        label="الجنس",
        choices=[('M', 'ذكر'), ('F', 'انثى')],
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        label='البريد الإلكتروني',
        widget=forms.EmailInput(attrs={'class': 'form-control'})
    )
    phone_number = forms.CharField(
        label='رقم الجوال',
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'dir': 'ltr',
            'type': 'tel',
            'pattern': '[0-9]*',
            'inputmode': 'numeric',
            'oninput': "this.value=this.value.replace(/[^0-9]/g,'')",
            'maxlength': '15',
        })
    )
    password1 = forms.CharField(
        label='كلمة المرور',
        widget=forms.PasswordInput(attrs={'class': 'form-control'}),
        help_text=mark_safe(
            "<ul>"
            "<li>لا يمكن أن تكون كلمة المرور الخاصة بك مشابهة جدًا لمعلوماتك الشخصية الأخرى.</li>"
            "<li>يجب أن تحتوي كلمة المرور الخاصة بك على 8 أحرف على الأقل.</li>"
            "<li>لا يمكن أن تكون كلمة المرور الخاصة بك كلمة مرور شائعة الاستخدام.</li>"
            "<li>لا يمكن أن تكون كلمة المرور الخاصة بك رقمية بالكامل.</li>"
            "</ul>"
        )
    )
    password2 = forms.CharField(
        label='تأكيد كلمة المرور',
        widget=forms.PasswordInput(attrs={'class': 'form-control'}),
        help_text=mark_safe(
            "<ul>"
            "<li>أدخل نفس كلمة المرور السابقة للتحقق.</li>"
            "</ul>"
        )
    )
    address = forms.CharField(
        label='العنوان',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    birthday = forms.DateField(
        label='تاريخ الميلاد',
        widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date'})
    )
    image = forms.ImageField(
        label='الصورة',
        widget=forms.FileInput(attrs={'class': 'form-control'})
    )
    #-------------------Section ---------------------------
    section = forms.ModelChoiceField(
        label='الشعبة',
        queryset=Section.objects.all(),
        required=False,
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    date_joining_sections = forms.DateTimeField(
        label='تاريخ انضمام الطالب للشعبة',
        required=False,
        widget=forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'})
    )
    add_by = forms.ModelChoiceField(
        queryset=SupervisorProfile.objects.all(),
        widget=HiddenInput()
    )
    #-------------------Levels ---------------------------
    
    academic_level = forms.ModelChoiceField(
        label='المستوى الأكاديمي',
        queryset=AcademicLevel.objects.all().order_by('level_order'),
        required=False,
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    is_current = forms.BooleanField(
        label='هل الطالب مسجل حالياً في هذه المستوى',
        required=False,
        initial=True,  # القيمة الافتراضية: صحيح
        widget=forms.CheckboxInput(attrs={'class': 'form-check-input'})
    )
    registration_date = forms.DateTimeField(
        label='تاريخ التسجيل بالمستوى الأكاديمي',
        required=False,
        widget=forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'})
    )
    is_active = forms.BooleanField(
        label='هل الطالب نشط؟',
        required=False,
        initial=True,  # القيمة الافتراضية: صحيح
        widget=forms.CheckboxInput(attrs={'class': 'form-check-input'})
    )
    class Meta:
        model = CustomUser
        fields = (
            'full_name', 'gender', 'email', 'phone_number',
            'password1', 'password2', 'birthday', 'address', 'image',
            'section', 'date_joining_sections', 'add_by','academic_level','is_current', 'registration_date','is_active'
        )

    def clean_email(self):
        email = self.cleaned_data.get("email")
        if CustomUser.objects.filter(email=email).exists():
            raise forms.ValidationError("هذا البريد الإلكتروني مستخدم من قبل")
        return email

    def clean_phone_number(self):
        phone_number = self.cleaned_data.get("phone_number")
        if CustomUser.objects.filter(phone_number=phone_number).exists():
            raise forms.ValidationError("رقم الجوال مستخدم من قبل")
        return phone_number

    def clean_password1(self):
        password1 = self.cleaned_data.get("password1")
        if len(password1) < 8:
            raise forms.ValidationError("يجب أن تكون كلمة المرور 8 أحرف على الأقل")
        if not re.search(r'[A-Za-z]', password1):
            raise forms.ValidationError("يجب أن تحتوي كلمة المرور على حرف واحد على الأقل")
        if not re.search(r'\d', password1):
            raise forms.ValidationError("يجب أن تحتوي كلمة المرور على رقم واحد على الأقل")
        return password1

    def clean_password2(self):
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("كلمتا المرور غير متطابقتين")
        return password2

    def save(self, commit=True):
        user = super().save(commit=False)
        user.user_type = CustomUser.USER_TYPE_STUDENT
        if commit:
            user.save()

            student_profile = StudentProfile.objects.create(
                user=user,
                section=self.cleaned_data.get('section'),
                date_joining_sections=self.cleaned_data.get('date_joining_sections'),
                add_by=self.cleaned_data.get('add_by')
            )


            academic_level = self.cleaned_data.get('academic_level')  # تأكد من أنك مررت بالقيمة الصحيحة
            if academic_level:
                Students_Academic_Levels.objects.create(
                    academic_levels=academic_level,
                    student=student_profile,
                    registration_date=self.cleaned_data.get('registration_date'),
                    is_current=self.cleaned_data.get('is_current')
                )
    
        return user


class EditStudentForm(UserChangeForm):
    password=None
    full_name = forms.CharField(
        label='الاسم الكامل',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    gender = forms.ChoiceField(
        label="الجنس",
        choices=[('M', 'ذكر'), ('F', 'انثى')],
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        label='البريد الإلكتروني',
        widget=forms.EmailInput(attrs={'class': 'form-control'})
    )
    phone_number = forms.CharField(
        label='رقم الجوال',
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'dir': 'ltr',
            'type': 'tel',
            'pattern': '[0-9]*',
            'inputmode': 'numeric',
            'oninput': "this.value=this.value.replace(/[^0-9]/g,'')",
            'maxlength': '15',
        })
    )
    address = forms.CharField(
        label='العنوان',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    birthday = forms.DateField(
        label='تاريخ الميلاد',
        widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date'})
    )
    image = forms.ImageField(
        label='الصورة',
        widget=forms.FileInput(attrs={'class': 'form-control'})
    )
    #-------------------Section ---------------------------
    section = forms.ModelChoiceField(
        label='الشعبة',
        queryset=Section.objects.all(),
        required=False,
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    date_joining_sections = forms.DateTimeField(
        label='تاريخ انضمام الطالب للشعبة',
        required=False,
        widget=forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'})
    )

    #-------------------Levels ---------------------------
    
    academic_level = forms.ModelChoiceField(
        label='المستوى الأكاديمي',
        queryset=AcademicLevel.objects.all(),
        required=False,
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    registration_date = forms.DateTimeField(
        label='تاريخ التسجيل بالمستوى الأكاديمي',
        required=False,
        widget=forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'})
    )
    is_current=forms.BooleanField(
        label='حالة المستوى',
        required=False,
        widget=forms.CheckboxInput(attrs={'class': 'form-control'})
    )
    class Meta:
        model = CustomUser
        fields = [
            'full_name', 'gender', 'email', 'phone_number',
            'birthday', 'address', 'image',
            'section', 'date_joining_sections','academic_level','is_current', 'registration_date'
        ]



    def clean_email(self):
        email = self.cleaned_data.get("email")  
        user=self.instance.pk
        if CustomUser.objects.filter(email=email).exclude(pk=user).exists():
            raise forms.ValidationError("هذا البريد الإلكتروني مستخدم من قبل")
        return email

    def clean_phone_number(self):
        phone_number = self.cleaned_data.get("phone_number")
        user=self.instance.pk
        if CustomUser.objects.filter(phone_number=phone_number).exclude(pk=user).exists():
            raise forms.ValidationError("رقم الجوال مستخدم من قبل")
        return phone_number


    def save(self, commit=True, supervisor=None):
        # 1) حفظ أو تحديث بيانات CustomUser
        try:
            user = super().save(commit=False)
            user.user_type = CustomUser.USER_TYPE_STUDENT
            if commit:
                user.save()
        except Exception as e:
            raise forms.ValidationError(f"خطأ أثناء حفظ بيانات المستخدم: {e}")

        # 2) جلب وتحديث StudentProfile
        try:
            profile = StudentProfile.objects.get(user=user)
        except StudentProfile.DoesNotExist:
            raise forms.ValidationError("ملف الطالب غير موجود، الرجاء التواصل مع الدعم.")

        profile.section = self.cleaned_data.get('section')
        profile.date_joining_sections = self.cleaned_data.get('date_joining_sections')
        if supervisor:
            profile.add_by = supervisor

        try:
            profile.save()
        except Exception as e:
            raise forms.ValidationError(f"خطأ أثناء حفظ بيانات الملف الشخصي للطالب: {e}")

        # 3) جلب وتحديث سجل Students_Academic_Levels
        level = self.cleaned_data.get('academic_level')
        reg_date = self.cleaned_data.get('registration_date')
        is_current=self.cleaned_data.get('is_current')
        if level:
            try:
                sal = Students_Academic_Levels.objects.get(student=profile)
                sal.academic_levels = level
                sal.registration_date = reg_date
                sal.save()
            except Students_Academic_Levels.DoesNotExist:
                Students_Academic_Levels.objects.create(
                    academic_levels=level,
                    student=profile,
                    registration_date=reg_date,
                    is_current=is_current
                )
            except Exception as e:
                raise forms.ValidationError(f"خطأ أثناء حفظ سجل المستوى الأكاديمي: {e}")

        return user