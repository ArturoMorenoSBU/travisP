from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from rest_framework.views import APIView
from rest_framework.generics import GenericAPIView
from rest_framework import permissions
from library.users.serializers import UserSerializer, RefreshTokenSerializer, GroupSerializer
from rest_framework.response import Response
from rest_framework import status

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = []
    # permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]


class LoginView(APIView):
    def post(self, request):
        email = request.data['email']
        password = request.data['password']
        # Crear instancia del objeto user, filtrando por email.
        user = User.objects.filter(email = email).first()

        # Si no regresó ningún usuario el filtro, no es válido.
        if user is None:
            raise AuthenticationFailed('Email is not registered yet!')

        if not user.check_password(password):
            raise AuthenticationFailed('Incorrect password!')

        # Response son los datos que devolvemos.
        response = Response()

        # Del response estamos devolviendo el id.
        response.data = {
            'id': user.id,
            'email': user.email
        }
        return response

class LogoutView(GenericAPIView):
    serializer_class = RefreshTokenSerializer
    permission_classes = (permissions.IsAuthenticated, )

    def post(self, request, *args):
        sz = self.get_serializer(data=request.data)
        sz.is_valid(raise_exception=True)
        sz.save()
        return Response(status=status.HTTP_204_NO_CONTENT)

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = []
    #permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]