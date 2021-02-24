FROM python:latest
MKDIR ./pytgcalls-docker
COPY . ./pytgcalls-docker
WORKDIR ./pytgcalls-docker
RUN apt install nodejs
RUN apt install npm
WORKDIR pytgcalls
RUN npm install
RUN npm run prepare
WORKDIR pytgcalls
RUN npm install
RUN pip install -r requirements.txt
RUN npm i socket.io-client
WORKDIR /pytgcalls-docker
