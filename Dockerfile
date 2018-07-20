
FROM node:alpine@sha256:9787e45382cb61f65068dbb1ef58337888f55f51f4dfc9455643a1db44da71a4

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
