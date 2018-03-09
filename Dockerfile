
FROM node:alpine@sha256:db26d84fd94cc48520b621540ef0e815b6a8045c19de1b8a68c6a95bacf22346

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
