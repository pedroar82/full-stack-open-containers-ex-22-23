FROM node:24

WORKDIR /usr/src/app

COPY --chown=node:node . .
RUN npm ci --omit=dev

COPY . .

CMD ["npm", "run", "start"]