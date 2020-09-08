from django.db import models

class Register(models.Model):
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    phone = models.FloatField()
    password = models.CharField(max_length=50)

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


