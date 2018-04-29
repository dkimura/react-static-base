
FROM node:alpine@sha256:bde41330043a15e404c994614b774377445deff9c676320d842aa2c87a382924

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
