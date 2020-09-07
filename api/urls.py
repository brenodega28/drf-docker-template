from django.urls import path
from django.conf.urls import url, include

from rest_framework.routers import DefaultRouter
from rest_framework.authtoken import views


router = DefaultRouter()

urlpatterns = [
    url(r'^tokens/', views.obtain_auth_token),
    url(r'^', include(router.urls))
]
