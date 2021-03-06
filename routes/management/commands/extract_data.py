from django.core.management.base import NoArgsCommand
from routes.models import Route, Stop
import cPickle as pickle
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
        pickle_file = \
            open('/home/ragsagar/projects/myworks/FindMyBus/FindMyBus_dj/dbdump/stop.pkl')
        stop_dict = pickle.load(pickle_file)
        for route_file in route_files:
            soup = BeautifulSoup(open(route_file).read())
            route_stop_names = self.get_stops(soup)
            route_stops = []
            for stop_name in route_stop_names:
                stop, created = Stop.objects.get_or_create(name=stop_name)
                if created:
                    print "New stop ", stop.name
                    stop.latitude = stop_dict[stop_name]['latitude']
                    stop.longitude = stop_dict[stop_name]['longitude']
                    stop.save()
                route_stops.append(stop)
            route_num = self.get_route_number(soup)
            route = Route.objects.create(number=route_num,
                                 name=self.get_route_name(soup),
                                 from_stop=Stop.objects.get(name=route_stop_names[0]),
                                 to_stop=Stop.objects.get(name=route_stop_names[-1]))
            route.stops = route_stops
            route.save()
            print route.name, route.number
            

    def get_stops(self, soup=None):
        """
        Get the list of all stops.
        """
        soup = soup or self.soup
        stops_table = soup.findAll('table')[1].findAll('td')
        return [unicode(stops_table[i].string) for i in range(1, len(stops_table), 2)]

    def get_route_number(self, soup=None):
        """
        Get the route number.
        """
        soup = soup or self.soup
        return unicode(soup.head.title.string.split('::')[1].split('(')[1][:-1]
                        )
        

    def get_route_name(self, soup=None):
        """
        Get the title of the route.
        """
        soup = soup or self.soup
        return unicode(soup.head.title.string.split('::')[1].split('(')[0])
