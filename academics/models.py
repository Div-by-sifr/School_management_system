from django.db import models

# Create your models here.


class AcademicYear(models.Model):
    start_year=models.DateField()
    end_year=models.DateField()
    
    def __str__(self):
        return f'{self.start_year.year}/{self.end_year.year}'
class AcademicLevel(models.Model):
    level_name=models.CharField(max_length=55)
    level_order=models.IntegerField(verbose_name="ترتيب المستوى")
    academic_year = models.ForeignKey(AcademicYear, related_name='academic_levels', on_delete=models.CASCADE)
    
    def __str__(self):
        return f'{self.level_name}'
    
class Section(models.Model):
    name=models.CharField(max_length=50)
    description=models.TextField(max_length=255)
    academic_level= models.ForeignKey(AcademicLevel, related_name='sections', on_delete=models.CASCADE)
    
    def __str__(self):
        return f'{self.academic_level.level_name}   {self.name}'

class Term(models.Model):
    term_number=models.IntegerField()
    start_term=models.DateField()
    end_term=models.DateField()
    academic_levels=models.ForeignKey(AcademicLevel, related_name='terms', on_delete=models.CASCADE)
    



class Subject(models.Model):
    subject_name=models.CharField(max_length=50)

class Class(models.Model):
    class_name=models.CharField(max_length=50)
    section = models.ForeignKey(Section, related_name='sections',on_delete=models.CASCADE)
    teacher=models.ForeignKey('accounts.TeacherProfile',related_name='teacher',on_delete=models.CASCADE)
    joining_date=models.DateField()
    subject=models.ForeignKey(Subject, related_name='subject',on_delete=models.CASCADE)
    