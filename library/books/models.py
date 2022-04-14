from django.db import models

# Create your models here.
class Author(models.Model):
	name = models.CharField(max_length=128)
	last_name = models.CharField(max_length=128, null=True)

class Lenguaje(models.Model):
	lenguaje = models.CharField(max_length=128)
	
class Genre(models.Model):
	genre = models.CharField(max_length=128)

class Book(models.Model):
	name = models.CharField(max_length = 256)
	publish_year = models.SmallIntegerField()
	pages = models.SmallIntegerField()
	price = models.DecimalField(max_digits = 6, decimal_places = 2)
	created_at = models.DateTimeField(auto_now_add=True, null=True)
	updated_at = models.DateTimeField(auto_now=True,null=True)
	authors = models.ManyToManyField(Author, through='BooksAuthors')
	lenguaje = models.ManyToManyField(Lenguaje, through='BooksLenguajes')
	genre = models.ManyToManyField(Genre, through='BooksGenres')

	# books_authors = models.OneToOneField(Author, through='BookAuthor')

# class BookAuthor(models.Model):
class BooksAuthors(models.Model):
	book = models.ForeignKey(Book, related_name='BookWithAuthors', on_delete=models.DO_NOTHING)
	author = models.ForeignKey(Author, related_name='AuthorWithBooks', on_delete=models.DO_NOTHING)

	def __str__(self):
		return f'{self.id}'

class BooksLenguajes(models.Model):
	book = models.ForeignKey(Book, related_name='BookWithLenguaje', on_delete=models.DO_NOTHING)
	lenguaje = models.ForeignKey(Lenguaje, related_name='LenguajeWithBooks', on_delete=models.DO_NOTHING)

	def __str__(self):
		return f'{self.id}'

class BooksGenres(models.Model):
	book = models.ForeignKey(Book, related_name='BookWithGenre', on_delete=models.DO_NOTHING)
	genre = models.ForeignKey(Genre, related_name='GenreWithBooks', on_delete=models.DO_NOTHING)

	def __str__(self):
		return f'{self.id}'