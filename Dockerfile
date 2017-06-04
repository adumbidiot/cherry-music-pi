FROM hypriot/rpi-python

RUN apt-get update
RUN apt-get install git -y

RUN pip install --upgrade setuptools
RUN pip install CherryPy

RUN mkdir /music

RUN git clone -b master https://github.com/devsnd/cherrymusic.git 

CMD cd cherrymusic && python cherrymusic --setup --port 8080
