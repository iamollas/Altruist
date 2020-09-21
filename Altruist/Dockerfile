FROM ubuntu:18.04
FROM python:3.7.8

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-add-repository ppa:swi-prolog/stable
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install swi-prolog

WORKDIR /usr/src/app

COPY base_a.pl .
COPY base_b.pl .

COPY fi_techniques.py .
COPY altruist.py .

COPY QualitativeExperiments.ipynb .
COPY QuantitativeExperiments.ipynb .

COPY requirements.txt .

RUN mkdir prolog_outputs

RUN pip install --upgrade setuptools

RUN pip install --no-cache-dir -r requirements.txt

RUN python3 -m pip install --upgrade notebook

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
