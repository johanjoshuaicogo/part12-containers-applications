FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

WORKDIR /usr/src/app/todo-backend

RUN npm install

ENV DEBUG=playground:*
USER node

CMD ["npm", "run", "dev", "--", "--host"]