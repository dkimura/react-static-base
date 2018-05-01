
FROM node:alpine@sha256:8fef1fa754962f317fd77abba875318645652c1eea846fd832f08b8ea7a43395

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
