
FROM node:alpine@sha256:5b823b38c41848028055a09fcae2a8b8cb394a8952131e0c747bd6534dc5ed38

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
