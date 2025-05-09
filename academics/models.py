from django.db import models

# Create your models here.


class AcademicYear(models.Model):
    start_year=models.DateField()
    end_year=models.DateField()
    add_by = models.ForeignKey('accounts.SupervisorProfile',default=None ,on_delete=models.DO_NOTHING, null=True, blank=True)
    
    def __str__(self):
        return f'{self.start_year.year}/{self.end_year.year}'
class AcademicLevel(models.Model):
    level_name=models.CharField(max_length=55)
    level_order=models.IntegerField(verbose_name="ترتيب المستوى")
    academic_year = models.ForeignKey(AcademicYear, related_name='academic_levels', on_delete=models.CASCADE)
    add_by = models.ForeignKey('accounts.SupervisorProfile',default=None ,on_delete=models.DO_NOTHING, null=True, blank=True)
    
    def __str__(self):
        return f'{self.level_name}-{self.academic_year}'
    
class Section(models.Model):
    name=models.CharField(max_length=50)
    description=models.TextField(max_length=255)
    academic_level= models.ForeignKey(AcademicLevel, related_name='sections', on_delete=models.CASCADE)
    add_by = models.ForeignKey('accounts.SupervisorProfile',default=None ,on_delete=models.DO_NOTHING, null=True, blank=True)
    
    def __str__(self):
        return f'{self.name}/{self.academic_level}'

class Term(models.Model):
    term_number=models.IntegerField()
    start_term=models.DateField()
    end_term=models.DateField()
    academic_levels=models.ForeignKey(AcademicLevel, related_name='terms', on_delete=models.CASCADE)
    add_by = models.ForeignKey('accounts.SupervisorProfile',default=None ,on_delete=models.DO_NOTHING, null=True, blank=True)
    



class Subject(models.Model):
    subject_name=models.CharField(max_length=50)
    add_by = models.ForeignKey('accounts.SupervisorProfile',default=None ,on_delete=models.DO_NOTHING, null=True, blank=True)
    

class Class(models.Model):
    class_name=models.CharField(max_length=50)
    section = models.ForeignKey(Section, related_name='sections',on_delete=models.CASCADE)
    teacher=models.ForeignKey('accounts.TeacherProfile',related_name='teacher',on_delete=models.CASCADE)
    joining_date=models.DateField()
    subject=models.ForeignKey(Subject, related_name='subject',on_delete=models.CASCADE)
    add_by = models.ForeignKey('accounts.SupervisorProfile',default=None ,on_delete=models.DO_NOTHING, null=True, blank=True)



class Students_Academic_Levels(models.Model):
    academic_levels=models.ForeignKey(AcademicLevel, related_name='academic_level', on_delete=models.CASCADE)
    student = models.ForeignKey('accounts.StudentProfile',related_name='student_level' ,default=None ,on_delete=models.CASCADE)
    registration_date=models.DateTimeField()
    is_current =models.BooleanField(default=False)

    def __str__(self):
        # تحقق من وجود الطالب ووجود مستوى أكاديمي في الشعبة
        if self.student and self.academic_levels:
            return f'{self.student.user.full_name} / {self.academic_levels} '
        elif self.student and self.student.section and self.academic_levels:
            return f'{self.student.user.full_name} / {self.academic_levels} / {self.student.section}'
        else:
            return 'بيانات غير مكتملة'
    class Meta:
        ordering = ['-registration_date']