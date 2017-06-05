FROM hypriot/rpi-python

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install cifs-utils -y

RUN pip install --upgrade setuptools
RUN pip install CherryPy

RUN mkdir /music

git clone --branch master https://github.com/devsnd/cherrymusic.git

ADD ./run.sh ./run.sh
RUN chmod +x ./run.sh

CMD ./run.sh
