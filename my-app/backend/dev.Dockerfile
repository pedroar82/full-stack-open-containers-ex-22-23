FROM node:24
  
WORKDIR /usr/src/app

COPY --chown=node:node . .

RUN npm ci 

RUN npm install -g nodemon
  
USER node

CMD ["npm", "run", "dev"]