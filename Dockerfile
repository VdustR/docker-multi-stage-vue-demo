# build
FROM node:alpine AS vue
WORKDIR /node/app
COPY package.json .
COPY yarn.lock .
RUN yarn
COPY . .
RUN yarn build

# serve
FROM nginx:alpine
COPY --from=vue /node/app/dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
