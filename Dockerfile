
FROM node:alpine@sha256:b62cb17c1739f490cb766338057170fc000248f5c9ff6e1ffcbf8bc83878e0ed

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
