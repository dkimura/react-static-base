
FROM node:alpine@sha256:52b2cd20b5b966cdea42c51840a092072192c8d2fa8b1b781780b218ff0cc35b

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
