FROM timbru31/node-alpine-git
ENV QBIT_HOST=http://localhost:8080
WORKDIR /usr/src/node-app

# get the code from https://github.com/ntoporcov/iQbit
RUN git init . && git remote add origin https://github.com/ntoporcov/iQbit.git && git pull origin master

COPY . ./
RUN npm run server-setup

EXPOSE 8081

CMD [ "npm", "run", "server-docker-start" ]
