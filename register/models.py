from django.db import models
from django.contrib.auth.models import User
# from django.contrib.auth.models import AbstractBaseUser,BaseUserManager



class Register(models.Model):
    first_name = models.CharField(max_length=50)
    last_name=models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=50)


class OwnerRegisterTable(models.Model):
    first_name = models.CharField(max_length=50)
    last_name=models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    restaurant = models.CharField(max_length=250)
    address = models.CharField(max_length=50)




class Profile(models.Model):
    user= models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self):
        return f'{self.user.username} Profile'

class restrotable(models.Model):
    restaurantName = models.CharField(max_length=500)
    address = models.CharField(max_length=500)
    location = models.CharField(max_length=500)
    contactNo = models.CharField(max_length=500)
    emailAddress = models.CharField(max_length=500)
    photo = models.CharField(max_length=500)
    menu = models.CharField(max_length=500)
    Ratings = models.CharField(max_length=20)
    Table2 = models.CharField(max_length=500)
    Table4 = models.CharField(max_length=500)
    Table6 = models.CharField(max_length=500)


class user_contact(models.Model):
    message = models.TextField(max_length=1000)
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    subject = models.CharField(max_length=150)


    def __str__(self):
        return self.name


class reserve_restaurant(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    date = models.DateField(max_length=100)
    time = models.TimeField(max_length=100)
    contact = models.CharField(max_length=100)
    guests = models.IntegerField()
    restaurant = models.CharField(max_length=200)
    table = models.CharField(max_length=100, default=0)



