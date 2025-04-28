from django.contrib import admin
from .models import Month,MonthlyGrade,TermGrade
# Register your models here.

class MonthAdmin(admin.ModelAdmin):
    list_display=['id','month_name','month_order']
    

admin.site.register(Month,MonthAdmin)
admin.site.register(MonthlyGrade)
admin.site.register(TermGrade)