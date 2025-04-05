from django.urls import path
from . import views

app_name = 'accounts'
urlpatterns = [
    path('', views.home,name='home'),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'), 
    path('signup/',views.signup,name='signup'),
    path('supervisor_management/',views.supervisor_management, name='supervisor_management'),
    path('supervisor_management/supervisor_list/',views.supervisor_list, name='supervisor_list'),
    path('supervisor_management/supervisor_add/',views.supervisor_add, name='supervisor_add'),
    path('supervisor_management/supervisor_delete/<int:pk>/',views.supervisor_delete, name='supervisor_delete'),
    path('supervisor_management/supervisor_edit/<int:pk>/',views.supervisor_edit, name='supervisor_edit'),
    path('supervisor_management/supervisor_search/',views.supervisor_search, name='supervisor_search'),

]


