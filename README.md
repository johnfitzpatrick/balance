# Balance

This example habitat application that takes a simple web application (webapp) and a load balancer (haproxy). Two webapps are launched and then bound to the haproxy through the backend binding.

## Build

    $ hab studio enter
    $ cd webapp
    $ build
    $ hab pkg export docker franklinwebber/webapp
    $ cd ../haproxy
    $ build
    $ hab pkg export docker franklinwebber/haproxy

## Run

    $ docker-compose up

To verify that each web server is working:

    $ curl localhost:8000/cgi-bin/hostname
    $ curl localhost:8001/cgi-bin/hostname

To verify that the load balancer is working:

    $ curl localhost:8002/cgi-bin/hostname
