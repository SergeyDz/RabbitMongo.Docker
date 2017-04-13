#!/bin/bash
docker rm rabbit
docker run --name rabbit -it -p 15672:15672 -p 5672:5672 -p 5671:5671 -p 27017:27017 myrabbit