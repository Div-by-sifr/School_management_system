import django_filters
from .models import CustomUser
class CustomUserFilter(django_filters.FilterSet):
    full_name=django_filters.CharFilter(
        field_name='full_name',
        lookup_expr='icontains',
        label='الاسم'
        )
    phone_number=django_filters.CharFilter(
        field_name='phone_number',
        label='رقم الهاتف'
        )
    gender=django_filters.ChoiceFilter(
        field_name='gender',
        choices=[('M', 'ذكر'), ('F', 'انثى')],
        label='الجنس'
        )
    email=django_filters.CharFilter(
        field_name='email',

        label='البريد الالكتروني'
        )
    class Meta:
        model = CustomUser
        fields = ['phone_number','full_name','gender','email']