FROM node:16.17.1-bullseye as build

RUN npm install -g pnpm

WORKDIR /var/buildspace
COPY . .
RUN pnpm install --frozen-lockfile

FROM build as app

WORKDIR /var/app
COPY --from=build /var/buildspace .
EXPOSE 3000

CMD ["pnpm", "start"]