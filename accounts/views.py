from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .forms import SignUpForm
from .models import GuardianProfile, StudentProfile,TeacherProfile,CustomUser
from django.contrib.auth.decorators import login_required
# Create your views here.

@login_required
def home(request):
    
    return render(request, 'home.html')


def logout(request):
    auth_logout(request)
    return redirect('home') 

def signup(request):
    form =SignUpForm()
    if request.method == 'POST':
        form=SignUpForm(request.POST)
        if form.is_valid():
            temp=form.save(commit=False)
            user_type=temp.user_type
            
            temp.save()
            if user_type == CustomUser.USER_TYPE_STUDENT:
                StudentProfile.objects.create(user=temp)
            elif user_type == CustomUser.USER_TYPE_TEACHER:
                TeacherProfile.objects.create(user=temp)
            elif user_type == CustomUser.USER_TYPE_GUARDIAN:
                GuardianProfile.objects.create(user=temp)
                
                
            # user=TeacherProfile()
            # user.user=temp
            # user.save()
            # auth_login(request, user)
            return redirect('home')
    return render(request, 'register.html',{'form':form})