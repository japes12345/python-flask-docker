FROM python:3.10
RUN apt-get update && apt-get install -y gfortran
RUN apt-get -y install gcc-11 g++-11
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["src/app.py"]
