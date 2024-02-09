FROM python:3

RUN apt update -y && apt install -y git vim less

#RUN git clone https://github.com/almandin/fuxploider.git /fuxploider/
COPY ./ /fuxploider/
WORKDIR /fuxploider/
RUN pip3 install -r requirements.txt
RUN mkdir results

CMD bash -c 'while true; do sleep 1; done'
