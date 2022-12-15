# pull the official python docker image
FROM python:slim
# set the work directory
WORKDIR /app

# set the env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy project files
COPY . .
