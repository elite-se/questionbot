FROM swift:latest

WORKDIR /questionbot

COPY . .

CMD ./start.sh
