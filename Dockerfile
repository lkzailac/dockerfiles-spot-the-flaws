FROM ubuntu:20.04

WORKDIR /app

COPY package*.json ./

RUN npm install \
    && npm cache clean --force

COPY . .

CMD ["npm", "start"]

# FROM ubuntu

# ADD . /app
# # copy?
# RUN apt-get update
# RUN apt-get upgrade -y
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y npm nodejs
# RUN apt-get install -y openssh-server nginx
# RUN cd /app && npm install

# CMD sshd & cd /app && npm start
