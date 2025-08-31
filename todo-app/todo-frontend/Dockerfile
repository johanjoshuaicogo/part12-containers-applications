FROM node:20 AS testing-stage

WORKDIR /usr/src/app
COPY . .
WORKDIR /usr/src/app/todo-frontend
RUN npm ci
RUN npm run test


FROM node:20 AS build-stage 
COPY --from=testing-stage /usr/src/app /usr/src/app/

WORKDIR /usr/src/app/todo-frontend

RUN npm ci

RUN npm run build

# This is a new stage, everything before this is gone, except for the files that we want to COPY
FROM nginx:1.25-alpine
# COPY --from=build-stage /usr/src/app/ /usr/src/app/
# COPY the directory dist from the build-stage to /usr/share/nginx/html
# The target location here was found from the Docker hub page
COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html
