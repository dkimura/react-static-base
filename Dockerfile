
FROM node:alpine@sha256:9cd67a00ed111285460a83847720132204185e9321ec35dacec0d8b9bf674adf

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
