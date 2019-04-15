FROM node:latest AS vue
RUN mkdir /node
WORKDIR /node
COPY . .
RUN yarn build

FROM nginx:latest
COPY --from=vue /node/dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf