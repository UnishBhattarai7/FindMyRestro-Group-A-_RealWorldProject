from django.urls import path
from . import views


urlpatterns=[
    path('usersignup',views.user_signup),
    path('userlogin',views.user_login),
    path('logout',views.logout),
    path('restaurant/<id>',views.description),
    path('index',views.index),
    path('',views.index)

]