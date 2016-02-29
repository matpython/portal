FROM python:3

MAINTAINER Pawel Kucmus <pkucmus@gmail.com>

ADD requirements requirements
RUN pip install -r requirements/devel.txt

ENV DJANGO_SETTINGS_MODULE=apof.settings.local

ADD apof /run/app
WORKDIR /run/app

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
