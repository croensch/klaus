from waitress import serve
from pyramid.config import Configurator
from pyramid.response import Response
from paste.translogger import TransLogger

def hello_world(request):
    return Response('Hello World!')

if __name__ == '__main__':
    config = Configurator()
    config.add_route('hello', '/')
    config.add_view(hello_world, route_name='hello')
    app = config.make_wsgi_app()
    serve(TransLogger(app), listen='*:8080')
