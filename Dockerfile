FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install cifs-utils -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install sqlite3 -y
RUN apt-get install libav -y

RUN pip3 install --upgrade setuptools
RUN pip3 install CherryPy

RUN mkdir /music

RUN git clone --branch master https://github.com/devsnd/cherrymusic.git

ADD ./run.sh ./run.sh
RUN chmod +x ./run.sh

CMD ./run.sh
