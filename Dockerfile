FROM node:14-buster as build
WORKDIR /app
RUN curl -f https://get.pnpm.io/v6.14.js | node - add --global pnpm
# pnpm fetch does require only lockfile
COPY pnpm-lock.yaml ./
ADD . ./
RUN pnpm install
RUN pnpm build

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]