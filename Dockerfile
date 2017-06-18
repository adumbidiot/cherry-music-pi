FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install git -y
RUN apt-get install cifs-utils -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install sqlite3 -y
RUN apt-get install libav-tools -y
RUN apt-get install imagemagick -y
RUN apt-get install mpg123 -y
RUN apt-get install lame -y
RUN apt-get install faad -y
RUN apt-get install flac -y
RUN apt-get install python3-unidecode -y
RUN apt-get install vorbis-tools -y
RUN apt-get install opus-tools -y

RUN alias ffmpeg=avconv

RUN pip3 install --upgrade setuptools
RUN pip3 install CherryPy

RUN mkdir /music
RUN mkdir /root/.local
RUN mkdir /root/.local/share
RUN mkdir /root/.local/share/cherrymusic

RUN git clone https://github.com/devsnd/cherrymusic.git
RUN cd cherrymusic && python3 cherrymusic
ADD ./cherrymusic.conf /root/.config/cherrymusic/cherrymusic.conf

ADD ./run.sh ./run.sh
RUN chmod +x ./run.sh

VOLUME /root/.local/share/cherrymusic

CMD ./run.sh
