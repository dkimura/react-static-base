
FROM node:alpine@sha256:482bef0259ecb54041a5c0fa31d0396283a2287efbbaf21bad8380a1160f39d1

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
