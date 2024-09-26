FROM python:3.8
WORKDIR /hello
ADD . /hello
RUN python -m pip install -r requirements.txt 
ENV FLASK_APP=hello.py 
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]