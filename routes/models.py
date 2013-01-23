import json
from django.db import models
from django.db.models import Q


class ListField(models.fields.CharField):
    """
    Uses CharField to store the data. On accessing the data, it will be
    converted to list using json.loads. On saving the data will be converted to
    string using json.dumps.
    """
    __metaclass__ = models.SubfieldBase

    def __init__(self, *args, **kwargs):
        #self.max_length = max_length
        super(ListField, self).__init__(*args, **kwargs)

    def to_python(self, value):
        """
        Convert the json encoded string to List field using json module.
        """
        if isinstance(value, list) or value is None:
            return value
        return json.loads(value)

    def get_db_prep_value(self, value, connection, prepared):
        """
        Converts the list to string to store in db.
        """
        return json.dumps(value)


class Stop(models.Model):
    """
    Represents each bus stop.
    """
    name = models.CharField(max_length=50)
    latitude = models.CharField(max_length=20)
    longitude = models.CharField(max_length=20)

    def __unicode__(self):
        return self.name


class RouteManager(models.Manager):
    """
    Custom methods that makes searching for places goes here.
    """
    def get_routes(self, from_place, to_place):
        """
        Returns `Route` objects that contains both stops.
        """
        #return self.filter(
                #Q(stops__name__icontains=from_place) &
                #Q(stops__name__icontains=to_place)
                #)
        return self.filter(stops__name__icontains=from_place). \
                    filter(stops__name__icontains=to_place). \
                    distinct()


class Route(models.Model):
    """
    Represents each route.
    """
    # Route number will represented as charfield as there will be alphabets
    # added to some route numbers.
    number = models.CharField(max_length=5)
    name = models.CharField(max_length=100)
    stops = models.ManyToManyField(Stop, related_name='stops')
    from_stop = models.ForeignKey(Stop, related_name='from_stop')
    to_stop = models.ForeignKey(Stop, related_name='to_stop')
    objects = RouteManager()

    def __unicode__(self):
        return unicode(self.number)


