FROM centos:centos7

RUN yum install -y python3
RUN yum install -y git
RUN git clone https://github.com/vovanoti/student-exam2.git

RUN cd /student-exam2 && python3 -m venv venv && . venv/bin/activate && pip install -e . 
COPY start.sh /

RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/pip/_vendor/ipaddress.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/README.rst
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/werkzeug/_internal.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/werkzeug/serving.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/werkzeug/serving.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/werkzeug/urls.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/werkzeug/middleware/http_proxy.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/flask/app.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/flask/app.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/flask/cli.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/flask/testing.py
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/venv/lib/python3.6/site-packages/Flask-2.0.3.dist-info/METADATA
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/' /student-exam2/js_example.egg-info/PKG-INFO

#RUN sh start.sh

CMD ["sh", "start.sh"]

EXPOSE 5000/tcp
EXPOSE 5000/udp
