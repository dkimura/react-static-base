
FROM node:alpine@sha256:a564fbaa01905f66e62c0bd9f58ddeb0576b8dc2e9a1aef6809d31f3d4a2e327

ENV CI true

WORKDIR /react-static-base

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /react-static-base

CMD ["yarn", "build"]
