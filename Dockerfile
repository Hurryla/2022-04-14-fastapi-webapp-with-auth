# Dockerfile

# pull the official docker image
FROM python:3.9.4-slim

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# set work directory
WORKDIR /app

# # set env variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
# RUN pip install Jinja2==3.0.0
# copy project
COPY . .
EXPOSE 8000
#uvicorn default port: 8000
# CMD [ "uvicorn", "main:app", "--reload" ] 
# CMD ["uvicorn", "main:app", "--reload"]