### builder to not run unecessary commands when build ###

FROM ruby:3.0.0-alpine3.12 AS builder

RUN apk update && apk upgrade && apk add --update --no-cache \
  build-base \
  curl-dev \
  postgresql-dev \
  tzdata \
  vim && rm -rf /var/cache/apk/*

ARG SINATRA_ROOT=/usr/src/app/
WORKDIR $SINATRA_ROOT

COPY Gemfile* $SINATRA_ROOT
RUN bundle config --global frozen 1 && bundle install

COPY . .

### after build, will run with the settings below ###

FROM ruby:3.0.0-alpine3.12

ARG SINATRA_ROOT=/usr/src/app/

RUN apk update && apk upgrade && apk add --update --no-cache \
  bash \
  postgresql-client \
  tzdata \
  vim && rm -rf /var/cache/apk/*

WORKDIR $SINATRA_ROOT

COPY --from=builder $SINATRA_ROOT $SINATRA_ROOT
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/

EXPOSE 9292

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["rackup", "config.ru", "-o", "0.0.0.0"]

