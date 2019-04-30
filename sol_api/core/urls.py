from django.urls import include, path
from rest_framework import routers
from rest_framework.authtoken.views import obtain_auth_token
from core import views as core_views


router = routers.DefaultRouter()
router.register(r'users', core_views.UserViewSet)
router.register(r'groups', core_views.GroupViewSet)


urlpatterns = [
    path('', include(router.urls)),
]