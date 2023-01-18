FROM  python3 main.py

RUN apt update && apt upgrade -y

RUN apt install git -y

COPY requirements.txt /requirements.txt

RUN cd /

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /instafeed

WORKDIR /instafeed

COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]















