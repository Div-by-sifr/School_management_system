from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
# Create your views here.
def home(request):
    
    return render(request, 'home.html')


def logout(request):
    auth_logout(request)
    return redirect('home') 

def signup(request):
    return render(request, 'home.html')