ARG NODE_VERSION=14-alpine3.12

FROM node:${NODE_VERSION} as base

# RUN apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash

# ARG STRAPI_VERSION=latest
# RUN yarn global add strapi@${STRAPI_VERSION}

RUN mkdir /srv/app && chown 1000:1000 -R /srv/app

WORKDIR /srv/app
RUN echo "ENTER !!"
RUN pwd
RUN mkdir strapi && chown 1000:1000 -R strapi
RUN ls

VOLUME /srv/app

# COPY docker-entrypoint.sh /usr/local/bin/
# ENTRYPOINT ["docker-entrypoint.sh"]

# EXPOSE 1337
EXPOSE 1337


# FROM node:16.13.1-alpine3.12
FROM base as development
RUN echo "before"
RUN ls
COPY ./package.json ./
COPY ./yarn.lock ./
COPY ./.env ./
RUN echo "after JSON"
RUN ls

COPY ./src ./public ./config ./.eslintrc ./favicon.ico ./ ./build ./.cache ./node_modules ./ 
RUN echo "after FILE"
RUN ls

RUN yarn install


# CMD ["strapi", "develop"]
CMD ["yarn", "develop"]

FROM development as production


# ENV NODE_ENV production
CMD ["strapi", "develop"]
# CMD ["yarn", "start"]

# CMD ["yarn", "build"]
# RUN chmod a+x /srv/app/run.sh


