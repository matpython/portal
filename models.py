
from django.db import models


class Restaurant(models.Model):
    IdRestaurant = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=100)
    OpenCurrentDay = models.CharField(max_length=10)
    IsActive = models.BooleanField
    Street = models.CharField(max_length=50)
    Phone = models.CharField(max_length=15)
    City = models.CharField(max_length=50)
    PostalCode = models.CharField(max_length=10)
    Www = models.CharField(max_length=100)


    def __str__(self):
        return self.name

class Meal(models.Model):
    IdMeal = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=50)
    IsActive = models.BooleanField
    IsVege = models.BooleanField

    def __str__(self):
        return self.name

class Ingridients(models.Model):
    IdIngridient = models.AutoField(primary_key=True)
    IdMeal = models.models.ManyToManyField(IdMeal, through='Meal')
    Name = models.CharField(max_length=50)
    IsActive = models.BooleanField
    

    def __str__(self):
        return self.name

class Comments(models.Model):
    IdComment = models.AutoField(primary_key=True)
    Content = models.CharField(max_length=255)
    SpiceRate = models.DecimalField(max_digits=5, decimal_places=0)
    Rank = models.DecimalField(max_digits=5, decimal_places=0)

    def __str__(self):
        return self.name