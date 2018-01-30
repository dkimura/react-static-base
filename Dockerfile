
FROM node:alpine

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

RUN yarn test

CMD ["yarn", "build"]
