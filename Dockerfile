from alpine:latest

RUN apk add --no-cache python3-dev && apk add py3-pip

WORKDIR /app 

COPY . /app

RUN  pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

# CMD flask run -h 0.0.0.0 -p 5000
