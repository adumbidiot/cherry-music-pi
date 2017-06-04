FROM hypriot/rpi-python

RUN apt-get update
RUN apt-get install git

RUN git clone -b master https://github.com/devsnd/cherrymusic.git 

CMD python cd cherrymusic &&cherrymusic --setup --port 8080
