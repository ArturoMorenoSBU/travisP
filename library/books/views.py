from rest_framework import viewsets
from rest_framework import permissions
from library.books.serializers import *

class AuthorViewSet(viewsets.ModelViewSet):
    queryset = Author.objects.all().order_by('name')
    serializer_class = AuthorSerializer
    permission_classes = []

class LenguajeViewSet(viewsets.ModelViewSet):
    queryset = Lenguaje.objects.all()
    serializer_class = LenguajeSerializer
    permission_classes = []

class GenreViewSet(viewsets.ModelViewSet):
    queryset = Genre.objects.all()
    serializer_class = GenreSerializer
    permission_classes = []

class BookViewSet(viewsets.ModelViewSet):
    queryset = Book.objects.all().order_by('name')
    serializer_class = BookSerializer
    permission_classes = []

class BooksAuthorsViewSet(viewsets.ModelViewSet):
    queryset = BooksAuthors.objects.all()
    serializer_class = BooksAuthorsSerializer
    permission_classes = []

class BooksLenguajesViewSet(viewsets.ModelViewSet):
    queryset = BooksLenguajes.objects.all()
    serializer_class = BooksLenguajesSerializer
    permission_classes = []

class BooksGenresViewSet(viewsets.ModelViewSet):
    queryset = BooksGenres.objects.all()
    serializer_class = BooksGenresSerializer
    permission_classes = []