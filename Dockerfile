FROM python:3.8.2-slim-buster
WORKDIR /app 
ADD requirements.txt /app/
RUN apt update && apt install -y gcc libpq-dev
RUN pip install -r requirements.txt
RUN pip install psycopg2 psycopg2-binary
ADD src/* /app/
CMD ["python","app.py"]