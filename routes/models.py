import json
from django.db import models


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

    def __unicode__(self):
        return unicode(self.number)


