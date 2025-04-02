from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import CustomUser
from django.contrib.auth import authenticate
from django.utils.safestring import mark_safe

import re
from django import forms
from django.contrib.auth.forms import UserCreationForm

class AddSupervisorForm(UserCreationForm):
    full_name = forms.CharField(
        label='الاسم الكامل',
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        label='البريد الإلكتروني',
        widget=forms.EmailInput(attrs={'class': 'form-control'})
    )
    phone_number = forms.CharField(
        label='رقم الجوال',
        widget=forms.TextInput(attrs={'class': 'form-control'})
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

class LoginForm(forms.Form):
    phone_number = forms.CharField(label='رقم الجوال', widget=forms.TextInput(attrs={'class': 'form-control'}))
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


