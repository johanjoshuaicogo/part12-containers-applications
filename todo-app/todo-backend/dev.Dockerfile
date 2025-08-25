FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

RUN npm install

ENV DEBUG=playground:*
ENV REDIS_URL=redis://localhost:6379
ENV MONGO_URL=mongodb://the_username:the_password@localhost:3456/the_database
USER node

CMD ["npm", "run", "dev", "--", "--host"]