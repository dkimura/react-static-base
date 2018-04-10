
FROM node:alpine@sha256:b9e63df2deb2b0a30cf67ec8f66ae433dacd2d99d16465bf98884baf8ce7c398

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
