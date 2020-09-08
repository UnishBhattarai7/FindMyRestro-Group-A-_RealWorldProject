from django.contrib import messages

from django.http import HttpResponse
from django.shortcuts import render, redirect
from register.models import Register
from register.models import restrotable
from register.models import user_contact
from register.models import OwnerRegisterTable
from register.models import reserve_restaurant
from django.core.files.storage import FileSystemStorage
from django.db.models import Q
from django.core.mail import send_mail
from django.contrib.auth.models import User, auth
from django.contrib.auth import get_user_model


def admin_page(request):
    return render(request, 'adminpage.html')


def viewOwner(request):
    owner = OwnerRegisterTable.objects.all()
    return render(request, 'adminpage.html', {'owners': owner})


def viewRestaurant(request):
    restaurant = restrotable.objects.all()
    return render(request, 'adminpage.html', {'restaurants': restaurant})


def restroDetails(request, r):
    owner = OwnerRegisterTable.objects.filter(restaurant=r)
    restro = restrotable.objects.get(restaurantName=r)
    return render(request, 'adminpage.html', {'restaurantDetails': restro, 'resturantOwner': owner})


def deleteRestroAndOwner(request, res):
    owner = OwnerRegisterTable.objects.filter(restaurant=res)
    restro = restrotable.objects.get(restaurantName=res)
    owner.delete()
    restro.delete()
    return redirect('/')


# def viewUser(request):
#     user=u.objects.all()
#     # return render(request, 'adminpage.html',{'users':user})

def about(request):
    return render(request, 'about.html')


def contact(request):
    return render(request, 'contact.html')


def addRestaurant(request):
    return render(request, 'addResturant.html')


def reservation(request):
    return render(request, 'reservation.html')


def userprofile(request):
    book = reserve_restaurant.objects.all()
    return render(request, 'userprofile.html', {'booking': book})





def user_signup(request):
    if request.method == "POST":
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']

        form = User.objects.create_user(first_name=first_name, last_name=last_name, username=username, email=email,
                                        password=password)
        form.save()

        return redirect('/userlogin')
    else:
        return render(request, "signup.html")


def user_login(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)
        book = reserve_restaurant.objects.all()

        if user is not None:
            auth.login(request, user)
            messages.info(request, "Login Successfully!!")
            return redirect('/',{'booking':book})
        else:
            messages.info(request, "Invalid Username or Password !!")
            return render(request, "login.html")
    else:
        return render(request, "login.html")


def owner_signup(request):
    if request.method == "POST":
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        restaurant = request.POST['restaurant']
        address = request.POST['address']

        owner_signup = OwnerRegisterTable(first_name=first_name, last_name=last_name, name=username, email=email,
                                          password=password, restaurant=restaurant, address=address)
        owner_signup.save()

        return redirect('../owner')
    else:
        return render(request, "ownersignup.html")


def owner_login(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']

        if OwnerRegisterTable.objects.filter(name=username, password=password):
            owner = OwnerRegisterTable.objects.filter(name=username)
            book = reserve_restaurant.objects.all()
            restaurant = restrotable.objects.all()
            return render(request, 'Ownerdashboard.html', {'owner': owner, 'book': book, 'restaurant': restaurant})

        else:
            return redirect("/owner")
    else:
        return render(request, "ownerlogin.html")

def viewReservation(request, id):
    user = User.objects.get(id=id)
    book = reserve_restaurant.objects.get(user_id=id)
    return render(request, 'Ownerdashboard.html',
                  {'users': user, 'books': book})


def logout(request):
    auth.logout(request)
    messages.info(request, "Logout Successfully!!")
    return redirect('/index')


def index(request):
    restaurant = restrotable.objects.all()
    return render(request, 'index.html', {'restaurants': restaurant})


def description(request, id):
    if request.user.is_authenticated:
        restaurant = restrotable.objects.all()
        restroid = restrotable.objects.get(id=id)
        return render(request, 'description.html', {'restaurants': restaurant, 'restroids': restroid})
    else:
        return redirect('../userlogin')


def contact(request):
    if request.method == 'POST':
        message = request.POST['message']
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        contact = user_contact(message=message, name=name, email=email, subject=subject)
        contact.save()
        messages.info(request, "Your Message is sent.")
        return redirect('../../contact')

        send_mail(
            'message from' + name,
            message,
            email,
            ['aayogorkhali777@gmail.com']
 )
        return render(request, 'contact.html', {'name': 'name'})
    else:
        return redirect('../../contact')


def single_restaurant(request, id):
    Restaurant = restrotable.objects.get(id=id)
    return render(request, 'single_restaurantWithReservation.html',
                  {'Restaurant': Restaurant, 'title': '{{Restaurant.restaurantName}}Restaurant'})


def reserve(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            user = request.user
            date = request.POST['date']
            time = request.POST['time']
            contact = request.POST['contactNo']
            guests = request.POST['Guests']
            Restaurant = request.POST['restaurantName']
            table = request.POST['Table']
            Reserve = reserve_restaurant(user=user, date=date, time=time, contact=contact, guests=guests,
                                         restaurant=Restaurant, table=table)
            Reserve.save()
            messages.info(request, "Reserved Successfully")
            return redirect('../')

        messages.info(request, "Something is wrong!!")
        return render(request, 'single_restaurantWithReservation.html', {'title': 'Restaurant'})
    messages.info(request, "You Are not Logged in. Please sign in first")
    return redirect('../userlogin')


def addRestaurant(request):
    if request.method == 'POST':
        restaurantName = request.POST['restaurantName']
        address = request.POST['address']
        location = request.POST['location']
        contactNo = request.POST['contactNo']
        emailAddress = request.POST['emailAddress']
        ResPhoto = request.FILES['picture']
        Photo = location + '/' + restaurantName + ResPhoto.name
        MenuPhoto = request.FILES['Menu']
        Menu = restaurantName + '/' + MenuPhoto.name
        file1 = FileSystemStorage()
        file2 = FileSystemStorage()
        Rating = request.POST['Rating']
        Table2 = request.POST['Table2']
        Table4 = request.POST['Table4']
        Table6 = request.POST['Table6']
        Restaurant = restrotable(restaurantName=restaurantName, address=address, location=location,
                                 contactNo=contactNo,
                                 emailAddress=emailAddress, Photo=Photo, Menu=Menu, Rating=Rating, Table2=Table2,
                                 Table4=Table4, Table6=Table6)
        Restaurant.save()
        file1.save(Menu, MenuPhoto)
        file2.save(Photo, ResPhoto)
        return redirect('../../')

    return render(request, 'addResturant.html', {'title': 'Add New Restaurant'})


def search(request):
    a = restrotable.objects.all()
    srh = request.POST['srch']
    name = restrotable.objects.filter(restaurantName=srh) | restrotable.objects.filter(location__icontains=srh)

    return render(request, 'index.html', {'restaurants1': a, 'names1': name})
    if restaurantss == " ":
        messages.error(request, 'no result found')
    else:
        return redirect('../restaurant')


def list(request, location):
    restaurant = restrotable.objects.all()
    name = restrotable.objects.filter(location=location)
    return render(request, 'index.html', {'restaurants': restaurant, 'names': name})

def delete(request,id):
    reserve = reserve_restaurant.objects.get(id=id)
    reserve.delete()
    return redirect('/')
