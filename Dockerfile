
FROM node:alpine@sha256:551f3d5b0d41d09a4e68a2200332bebf00367090fb21d999bad95b97611aab83

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
