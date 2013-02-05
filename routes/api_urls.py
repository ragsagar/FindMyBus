from django.conf.urls import patterns, include, url

from .apis import RouteSearchResource

urlpatterns = patterns('routes.views.apis',
        url(r'^search_route/?$',
            RouteSearchResource.as_view(),
            name='route_search_api'),
        )
