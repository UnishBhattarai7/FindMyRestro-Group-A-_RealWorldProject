from django.urls import path
from . import views


urlpatterns=[
    path('about',views.about),
    path('contact',views.contact),
    path('usersignup',views.user_signup),
    path('userlogin',views.user_login),
    path('userlogout',views.logout),
    path('addRestaurant',views.addRestaurant),
    path('viewRestaurant', views.viewRestaurant),
    path('viewOwner', views.viewOwner),
    path('reservation',views.reservation),
    path('userprofile',views.userprofile),
    path('index',views.index),
    path('restaurant/<id>',views.description),
    path('ownersignup',views.owner_signup),
    path('owner',views.owner_login),
    path('restroDetails/<r>', views.restroDetails),
    path('deleteRestaurantAndOwner/<res>', views.deleteRestroAndOwner),
    path('reserve', views.reserve),
    path('single_restaurant/<id>', views.single_restaurant),
    path('viewReservation/<id>', views.viewReservation),
    path('restaurant/<id>', views.description),
    path('restaurants/<location>', views.list),
    path('index', views.index),
    path('search', views.search),
    path('adminpage',views.admin_page),
    path('delete/<id>',views.delete),
    path('',views.index)
]