
FROM node:alpine@sha256:03cc96cdb37b8a018f645058dc5a88878cce222607e8633c4ef4e166c634f7dd

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
