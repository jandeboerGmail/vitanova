FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY vitanova/settings_prod.py /code/vitanova/settings.py
COPY . /code

# Set the locale
RUN apt-get update && apt-get install -y locales

RUN sed -i '/nl_NL.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen 
ENV LANG nl_NL.UTF-8  
ENV LANGUAGE NL_NL:nl  
ENV LC_ALL nl_NL.UTF-8     

#RUN locale-gen nl_NL.utf8


EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
