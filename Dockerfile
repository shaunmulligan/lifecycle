# Base our container on a Slim Python + Debian (Jessie) Image
FROM resin/raspberrypi3-python:2.7

# Set our working directory
WORKDIR /usr/src/app

# Copy all our project into /usr/src/app/ folder in the container.
COPY . .
# So in our container we should now have:
# /usr/src/app/
#           |── Dockerfile
#           └── project
#               |── startup.sh
#               └── main.py

ENV INITSYSTEM=on

CMD ["bash","project/startup.sh"]
