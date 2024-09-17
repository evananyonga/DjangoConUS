# base image
FROM python:3.12.5-bookworm

# set working directory
ENV DockerHOME=/var/www
RUN mkdir -p $DockerHOME
WORKDIR $DockerHOME

# copy local contents into working directory
COPY . $DockerHOME

# copy project files
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose port where django runs
EXPOSE 8000

# specify application entry point 
ENTRYPOINT ["python", "manage.py"]

# start server
CMD ["runserver", "0.0.0.0:8000"]