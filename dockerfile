FROM node

RUN mkdir -p /usr/src/app
#-p se utiliza para asegurarse de que /usr/src/app se cree incluso si los directorios /usr y /usr/src no existen previamente.

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]