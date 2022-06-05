FROM node:14-alpine as base

WORKDIR /code

COPY package*.json ./

EXPOSE 8000

FROM base as dev
RUN npm install -g nodemon
RUN npm install
COPY . ./
CMD ["npm", "run", "dev"]