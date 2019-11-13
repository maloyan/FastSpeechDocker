FROM ubuntu

RUN apt -y update
RUN apt-get clean && apt-get update && apt-get install -y locales
RUN apt -y install build-essential libpcre3-dev python3 python3-pip curl zip unzip swig

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN pip3 install numpy==1.16.2 scipy==1.2.1 sklearn pandas==0.24.2 torch==1.1.0 keras tqdm tensorflow matplotlib==2.2.2 inflect==2.1.0 librosa==0.6.3
