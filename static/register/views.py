from django.contrib import messages

from django.http import HttpResponse
from django.shortcuts import render,redirect
from register.models import Register
from register.models import restrotable
from django.contrib.auth.models import User,auth

def index(request):
    restaurant = restrotable.objects.all()
    return render(request, 'index.html', {'restaurants': restaurant})


def description(request,id):
    restaurant = restrotable.objects.all()
    restroid=restrotable.objects.get(id=id)
    return render(request, 'description.html', {'restaurants': restaurant,'restroids': restroid})



def user_signup(request):
    if request.method == "POST":
        username = request.POST['username']
        email = request.POST['email']
        phone = request.POST['phone']
        password = request.POST['password']


        form=Register.objects.create_user(username=username,email=email,phone=phone,password=password)
        form.save()

        return redirect('login.html')
    else:
        return render(request,"signup.html")



def user_login(request):
    if request.method=="POST":
        username = request.POST['username']
        password = request.POST['password']


        user=auth.authenticate(username=username,password=password)

        if user is not None:
            auth.login(request,user)
            return redirect('/index')
        else:
            messages.info(request,"Invalid login")
            return render(request,"login.html")
    else:
            return render(request,"login.html")

def logout(request):
    auth.logout(request)
    return redirect('/')


