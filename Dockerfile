
FROM node:alpine@sha256:82d02395c9a7160175635314b5a0fa05bf3dcd279845d291f8383b662fc9c832

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
