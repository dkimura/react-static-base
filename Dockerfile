
FROM node:alpine@sha256:1ea975c6ba5be52074af83445658b060d82fc03bbf70b74137c3e2b5452cee4f

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
