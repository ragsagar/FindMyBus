from django import forms


class RouteSearchForm(forms.Form):
    from_place = forms.CharField(required=True,
                                 label="From where?")
    to_place = forms.CharField(required=True,
                               label="To where?")
