
FROM node:alpine@sha256:d3953106bc2b892c29ad5b8237f34cb026668647774a45e832c0541bc71f4785

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
