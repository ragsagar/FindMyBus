import os
from django.http import HttpResponse
from django.conf import settings

def get_manifest(request):
    '''
    Temporary development view for serving the FXOS manifest.webapp file.

    '''
    try:
        with open(os.path.join(settings.STATIC_ROOT, 'manifest.webapp')) as fp:
            data = fp.read()
        return HttpResponse(data, content_type='application/x-web-app-manifest+json')
    except Exception as e:
        import pdb
        pdb.set_trace()


