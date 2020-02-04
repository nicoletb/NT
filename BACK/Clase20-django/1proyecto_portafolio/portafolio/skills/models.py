from django.db import models
#  Model = tabla
class Job(models.Model):
    image = models.ImageField(upload_to="images/") 
    summary = models.CharField(max_length=200)  # .CharField = varchar
    detalle = models.TextField()
    experto = models.BooleanField(null=True)
    desde = models.DateTimeField(null=True)
    hasta = models.DateTimeField(null=True)


    def __str__(self):
        return self.summary  # Para que el dato que aparezca sea el nombre y no "Object1"