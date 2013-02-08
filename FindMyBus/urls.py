from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView
#from django.conf.urls.static import static
from django.contrib import admin
from views import get_manifest

admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^api/', include('routes.api_urls')),
    url(r'^fxos/manifest\.webapp/?$', get_manifest),
    url(r'^$', TemplateView.as_view(template_name="routes/index.html"), 
        name='home'),
    # url(r'^FindMyBus/', include('FindMyBus.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)
