import json
from django.db import models


class ListField(models.fields.CharField):
    """
    Uses CharField to store the data. On accessing the data, it will be
    converted to list using json.loads. On saving the data will be converted to
    string using json.dumps.
    """
    def __init__(self, *args, **kwargs):
        #self.max_length = max_length
        super(ListField, self).__init__(*args, **kwargs)

    def to_python(self, value):
        """
        Convert the json encoded string to List field using json module.
        """
        if isinstance(value, type) or value is None:
            return value
        return json.loads(value)

    def get_prep_value(self, value):
        """
        Converts the list to string to store in db.
        """
        return json.dumps(value)


class Route(models.Model):
    """
    Each row will contains stops and other details about each route.
    """
    number = models.CharField(max_length=5)
    name = models.CharField(max_length=80)
    stops = ListField(max_length=3000)
    from_stop = models.CharField(max_length=40)
    to_stop = models.CharField(max_length=40)
