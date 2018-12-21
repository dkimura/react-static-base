
FROM node:alpine@sha256:49028b628012b5e35479d1f714ae3a6200eab9a8a7b8f3e95159183dbc14910a

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
