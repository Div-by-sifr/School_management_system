from django.contrib import admin
from .models import AcademicLevel,AcademicYear,Section,Term,Subject,Class,Students_Academic_Levels
# Register your models here.
class AcademicLevelsAdmin(admin.ModelAdmin):
    list_display = ('id', 'level_name','level_order','academic_year')
    ordering = ('level_order',)

class SectionAdmin(admin.ModelAdmin):
    list_display = ('id', '__str__','description','academic_level_order','get_academic_year')
    list_display_links = ('id', '__str__','description')
    list_filter=('id','name','academic_level__level_order','academic_level__academic_year')
    ordering = ('academic_level__level_order',)
    
    def academic_level_order(self,obj):
        return obj.academic_level.level_order
    academic_level_order.short_description = 'ترتيب المستوى'
    
    def get_academic_year(self,obj):
        return obj.academic_level.academic_year
    get_academic_year.short_description = 'عام التعليمي'



admin.site.register(AcademicLevel,AcademicLevelsAdmin)

admin.site.register(AcademicYear)

admin.site.register(Section,SectionAdmin)

admin.site.register(Term)

admin.site.register(Subject)



admin.site.register(Class)
admin.site.register(Students_Academic_Levels)

