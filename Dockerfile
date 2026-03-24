FROM node:20.19

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

EXPOSE 3333

CMD ["yarn", "dev"]