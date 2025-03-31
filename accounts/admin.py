from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.utils.translation import gettext_lazy as _
from .models import CustomUser, StudentProfile,TeacherProfile,GuardianProfile,StudentGuardian
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

admin.site.register(CustomUser, CustomUserAdmin)
admin.site.register(StudentProfile)
admin.site.register(TeacherProfile)
admin.site.register(GuardianProfile)
admin.site.register(StudentGuardian)
