from django.urls import path
from . import views
app_name = 'accounts'
urlpatterns = [
    path('', views.home,name=''),
    path('home/', views.home,name='home'),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'), 
    path('signup/',views.signup,name='signup'),
    path('supervisor_management/',views.supervisor_management, name='supervisor_management'),
    path('supervisor_management/supervisor_list/',views.supervisor_list, name='supervisor_list'),
    path('supervisor_management/supervisor_add/',views.supervisor_add, name='supervisor_add'),
    path('supervisor_management/supervisor_delete/<int:pk>/',views.supervisor_delete, name='supervisor_delete'),
    path('supervisor_management/supervisor_edit/<int:pk>/',views.supervisor_edit, name='supervisor_edit'),
    path('supervisor_management/supervisor_search/',views.supervisor_search, name='supervisor_search'),
    path('student_management/',views.student_management, name='student_management'),
    path('student_management/student_list/',views.student_list, name='student_list'),
    path('student_management/student_delete/<int:pk>/',views.student_delete, name='student_delete'),
    path('student_management/student_edit/<int:pk>/',views.student_edit, name='student_edit'),
    path('student_management/student_add/',views.student_add, name='student_add'),
    path('student_management/student_search/',views.student_search, name='student_search'),
    path('student_management/student_details/<int:pk>/',views.student_details, name='student_details'),
    path('student_management/student_details/delete_level/<int:pk>/',views.student_academic_level_delete, name='delete_level'),
    path('student_management/student_details/edit_level/<int:pk>/<int:level>/',views.student_edit_academic__level, name='edit_level'),
    path('student_management/student_details/add_level/<int:pk>/',views.student_add_academic_level, name='add_level'),
]


