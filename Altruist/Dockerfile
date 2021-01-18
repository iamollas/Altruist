FROM ubuntu:18.04
FROM python:3.7.8

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-add-repository ppa:swi-prolog/stable
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install swi-prolog

WORKDIR /usr/src/app

COPY Altruist/base_a.pl .
COPY Altruist/base_b.pl .

COPY Altruist/fi_techniques.py .
COPY Altruist/altruist.py .

COPY Altruist/QualitativeExperiments.ipynb .
COPY Altruist/QuantitativeExperiments.ipynb .

COPY Altruist/requirements.txt .

RUN mkdir prolog_outputs

RUN pip install --upgrade setuptools

RUN pip install --no-cache-dir -r requirements.txt

RUN apt install -y libgraphviz-dev

RUN apt install -y python-pydot python-pydot-ng graphviz

RUN pip install pygraphviz==1.5

RUN python3 -m pip install --upgrade notebook

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
