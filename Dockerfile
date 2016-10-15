FROM python:2

ADD . /root

RUN easy_install argparse

RUN cd /root && python setup.py build && python setup.py install

ENTRYPOINT ["/root/webhandler.py"]
