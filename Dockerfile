FROM hypriot/rpi-python

RUN apt-get update
RUN apt-get install git -y

RUN pip install --upgrade setuptools
RUN pip install CherryPy

RUN mkdir /music

RUN git clone -b master https://github.com/devsnd/cherrymusic.git 

ADD ./run.sh ./run.sh
CMD run.sh
