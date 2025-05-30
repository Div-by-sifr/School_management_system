# Generated by Django 5.2 on 2025-04-27 01:42

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('academics', '0011_alter_students_academic_levels_options'),
        ('accounts', '0012_alter_customuser_phone_number'),
        ('grades', '0003_alter_month_month_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='TestGrade',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('score', models.DecimalField(decimal_places=2, max_digits=20)),
                ('exam', models.DecimalField(decimal_places=2, max_digits=30)),
                ('start_date', models.DateTimeField()),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='TestGrade', to='accounts.studentprofile')),
                ('subject', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='TestGrade', to='academics.subject')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='TestGrade', to='accounts.teacherprofile')),
                ('term', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='TestGrade', to='academics.term')),
            ],
        ),
    ]
