
FROM node:alpine@sha256:f8d8eb84ede1830b78d910e241aa0145ccff4a3cd2b573de9c1df00fbad41cee

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
