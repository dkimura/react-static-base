
FROM node:alpine@sha256:51b49ed0eff61ca8d98ffd01595c917331c1eae606cae4a7986a6bd9897e138c

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
