FROM node:latest AS core
COPY . /pytgcalls-docker
WORKDIR pytgcalls-docker/pytgcalls
RUN npm install
RUN npm run prepare
WORKDIR pytgcalls
RUN npm install
RUN npm i socket.io-client

FROM python:latest
WORKDIR /pytgcalls-docker
RUN pip install -r requirements.txt
