
FROM node:alpine@sha256:5597d19ee1b02f780b0ddc7dcb17648ec576e83d2bc44e7ea34e3df72678599d

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
