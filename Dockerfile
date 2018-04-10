
FROM node:alpine@sha256:28b9d10f0551ba8e32df606322d2cb55dabc1202f03fabfdd1a12870f5176837

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
