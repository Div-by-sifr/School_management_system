from django.db import models

# # Create your models here.
class Month(models.Model):
    MONTH_CHOICES  = [
        (1, "يناير"),
        (2, "فبراير"),
        (3, "مارس"),
        (4, "أبريل"),
        (5, "مايو"),
        (6, "يونيو"),
        (7, "يوليو"),
        (8, "اغسطس"),
        (9, "سبتمبر"),
        (10, "أكتوبر"),
        (11, "نوفمبر"),
        (12, "ديسمبر"),
    ]
    month_name=models.IntegerField(
        choices=MONTH_CHOICES,
        unique=True,
        help_text='اختر اسم الشهر'
        )
    month_order = models.IntegerField(
        help_text="اختر رقم ترتيب هذا الشهر في السنة (1-12)"
    )
    class Meta:
        ordering = ['month_order']


    def __str__(self):
        return f"{self.month_order} - {self.month_name}"


class MonthlyGrade(models.Model):
    assignments=models.DecimalField( max_digits=20,decimal_places=2)
    attendance =models.DecimalField( max_digits=20,decimal_places=2)
    oral  =models.DecimalField( max_digits=20,decimal_places=2)
    written  =models.DecimalField( max_digits=40,decimal_places=2)
    start_date=models.DateTimeField()
    month=models.ForeignKey(
        Month,
        on_delete=models.DO_NOTHING,
        related_name='Monthly_Grade'
    )
    term=models.ForeignKey(
        'academics.Term',
        on_delete=models.DO_NOTHING,
        related_name='Monthly_Grade'
    )
    subject=models.ForeignKey(
        'academics.Subject',
        on_delete=models.DO_NOTHING,
        related_name='Monthly_Grade'
    )
    teacher=models.ForeignKey(
        'accounts.TeacherProfile',
        on_delete=models.DO_NOTHING,
        related_name='Monthly_Grade'
    )
    student=models.ForeignKey(
        'accounts.StudentProfile',
        on_delete=models.DO_NOTHING,
        related_name='Monthly_Grade'
    )


class TermGrade(models.Model):
    score=models.DecimalField(max_digits=20,decimal_places=2)
    exam=models.DecimalField( max_digits=30,decimal_places=2)
    
    start_date=models.DateTimeField()
    term=models.ForeignKey(
        'academics.Term',
        on_delete=models.DO_NOTHING,
        related_name='TermGrade'
    )
    subject=models.ForeignKey(
        'academics.Subject',
        on_delete=models.DO_NOTHING,
        related_name='TermGrade'
    )
    teacher=models.ForeignKey(
        'accounts.TeacherProfile',
        on_delete=models.DO_NOTHING,
        related_name='TermGrade'
    )
    student=models.ForeignKey(
        'accounts.StudentProfile',
        on_delete=models.DO_NOTHING,
        related_name='TermGrade'
    )

