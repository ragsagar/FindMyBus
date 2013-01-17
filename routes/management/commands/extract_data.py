from django.core.management.base import NoArgsCommand
from routes.models import Route
from os.path import isfile
from os.path import join as join_path
from os import listdir
from BeautifulSoup import BeautifulSoup


class Command(NoArgsCommand):

    def handle_noargs(self, **options):
        """
        Extract data and save into the database.
        """
        routes_dir = '/home/ragsagar/Downloads/PMPML_TimeTable/route/en/'
        route_files = [join_path(routes_dir, file_) for file_ in
                       listdir(routes_dir) if isfile(join_path(routes_dir, file_))]
        for route_file in route_files:
            soup = BeautifulSoup(open(route_file).read())
            route_stops = self.get_stops(soup)
            route_num = self.get_route_number(soup)
            print route_num
            Route.objects.create(number=route_num,
                                 name=self.get_route_name(soup),
                                 stops=route_stops,
                                 from_stop=route_stops[0],
                                 to_stop=route_stops[-1])

    def get_stops(self, soup=None):
        """
        Get the list of all stops.
        """
        soup = soup or self.soup
        stops_table = soup.findAll('table')[1].findAll('td')
        return [stops_table[i].string for i in range(1, len(stops_table), 2)]

    def get_route_number(self, soup=None):
        """
        Get the route number.
        """
        soup = soup or self.soup
        return soup.head.title.string.split('::')[1].split('(')[1][:-1]
        

    def get_route_name(self, soup=None):
        """
        Get the title of the route.
        """
        soup = soup or self.soup
        return soup.head.title.string.split('::')[1].split('(')[0]
