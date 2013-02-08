from django.db import models
from delicious_cake import fields
from delicious_cake.resources import DetailResource
from delicious_cake.entities import Entity

from .models import Route


class RouteListEntity(Entity):
    """
    To returns the list of stops as a list named `objects`.
    """
    objects = fields.ListField(attr='objects')

    @models.permalink
    def get_resource_uri(self):
        return ('route_search_api',)


class RouteSearchResource(DetailResource):
    """
    Returns the routes that that has given stops.
    """
    def get(self, request, *args, **kwargs):
        print(request.GET)
        route_list = {}
        from_place = request.GET.get('from', None)
        to_place = request.GET.get('to', None)
        if not from_place and not to_place:
            return 
        result = [{'number': route.number, 'name': route.name}
                  for route in Route.objects.get_routes(from_place, to_place)]
        route_list['objects'] = result
        return route_list

    class Meta:
        entity_cls = RouteListEntity


