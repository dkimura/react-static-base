
FROM node:alpine@sha256:d2180576a96698b0c7f0b00474c48f67a494333d9ecb57c675700395aeeb2c35

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
