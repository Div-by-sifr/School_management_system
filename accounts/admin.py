from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.utils.translation import gettext_lazy as _
from .models import CustomUser, StudentProfile,TeacherProfile,GuardianProfile,StudentGuardian,SupervisorProfile
from django.utils.html import mark_safe
class CustomUserAdmin(BaseUserAdmin):
    ordering = ('phone_number',)
    list_display = ('phone_number', 'full_name', 'user_type', 'is_staff', 'is_active','image_tag')
    list_filter = ('user_type', 'is_staff', 'is_active')
    search_fields = ('phone_number', 'full_name')
    readonly_fields = ('image_tag',)  # إضافة الحقل هنا

    fieldsets = (
        (None, {'fields': ('phone_number', 'password')}),
        (_('المعلومات الشخصية'), {'fields': ('full_name',   'birthday', 'gender', 'address', 'email','user_type','image','image_tag')}),
        (_('الصلاحيات'), {'fields': ('is_staff', 'is_active', 'is_superuser', 'groups', 'user_permissions')}),
    )
    
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('phone_number', 'full_name', 'user_type', 'password1', 'password2', 'is_staff', 'is_active'),
        }),
    )
    def image_tag(self, obj):
        if obj.image:
            return mark_safe(f'<img src="{obj.image.url}" width="100" height="100" />')
        return 'لايوجد صورة حالياً'
    image_tag.short_description = 'الصورة الشخصية'



class SupervisorProfileAdmin(admin.ModelAdmin):
    ordering = ('user__phone_number',)
    list_display = (
        'get_phone_number', 
        'get_full_name', 
        'get_user_type', 
        'get_is_staff', 
        'get_is_active', 
        'image_tag'
    )
    list_filter = ('user__user_type', 'user__is_staff', 'user__is_active')
    search_fields = ('user__phone_number', 'user__full_name')
    list_display_links=['get_phone_number','get_full_name']
    # تمكين تحرير الحقول الخاصة بالمستخدم من خلال المشرف
    fields = ('user', 'get_phone_number', 'get_full_name', 'get_user_type', 
              'get_email', 'get_birthday', 'get_gender', 'get_address', 'image_tag')

    readonly_fields = ('get_phone_number', 'get_full_name', 'get_user_type', 
                       'get_email', 'get_birthday', 'get_gender', 'get_address', 'image_tag')

    def get_phone_number(self, obj):
        return obj.user.phone_number
    get_phone_number.short_description = 'رقم الجوال'

    def get_full_name(self, obj):
        return obj.user.full_name
    get_full_name.short_description = 'الاسم الكامل'

    def get_user_type(self, obj):
        return obj.user.user_type
    get_user_type.short_description = 'نوع المستخدم'

    def get_email(self, obj):
        return obj.user.email
    get_email.short_description = 'البريد الإلكتروني'

    def get_birthday(self, obj):
        return obj.user.birthday
    get_birthday.short_description = 'تاريخ الميلاد'

    def get_gender(self, obj):
        return obj.user.get_gender_display()  # لجلب النص المقروء بدل الاختصار M/F
    get_gender.short_description = 'الجنس'

    def get_address(self, obj):
        return obj.user.address
    get_address.short_description = 'العنوان'

    def get_is_staff(self, obj):
        return obj.user.is_staff
    get_is_staff.short_description = 'مسؤول'

    def get_is_active(self, obj):
        return obj.user.is_active
    get_is_active.short_description = 'نشط'

    def image_tag(self, obj):
        if obj.user.image:
            return mark_safe(f'<img src="{obj.user.image.url}" width="100" height="100" />')
        return 'لا يوجد صورة'
    image_tag.short_description = 'الصورة الشخصية'


admin.site.register(CustomUser, CustomUserAdmin)
admin.site.register(StudentProfile)
admin.site.register(TeacherProfile)
admin.site.register(GuardianProfile)
admin.site.register(StudentGuardian)
admin.site.register(SupervisorProfile,SupervisorProfileAdmin)
