FROM python:3.12.0b4-alpine3.18
LABEL maintainer "lucasHscarmo"
WORKDIR /giropops-senhas
COPY ./giropops-senhas/requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
COPY ./giropops-senhas ./
ENV REDIS_HOST="redisdb"
CMD [ "flask", "run", "--host=0.0.0.0" ]