from django.shortcuts import render
from .models import Route
from .forms import RouteSearchForm


def home(request):
    """
    Render the home page.
    """
    if request.method == 'POST':
        form = RouteSearchForm(request.POST)
        if form.is_valid():
            from_place = form.cleaned_data['from_place']
            to_place = form.cleaned_data['to_place']
            routes = Route.objects.get_routes(from_place, to_place)
            return render(request, 'home.html', {'routes': routes})
    else:
        form = RouteSearchForm()
    return render(request, 'home.html', {'form': form})
