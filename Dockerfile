FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN apt-get install -y make libssl-dev 
RUN apt-get install -y zlib1g-dev libbz2-dev libreadline-dev  
RUN apt-get install -y libsqlite3-dev wget curl libncurses5-dev
RUN pip install -U pip
RUN pip install --no-cache -r requirements.txt