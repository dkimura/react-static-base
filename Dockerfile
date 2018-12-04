
FROM node:alpine@sha256:029be424179376ad781ea288df52a7c4b84ec0ca1da59c5a3a98fca84fcbab91

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
