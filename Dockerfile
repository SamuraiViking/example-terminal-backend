FROM ruby:2.6.5-alpine

RUN apk add build-base
RUN mkdir -p /www/example-terminal-backend
WORKDIR /www/example-terminal-backend
COPY . .
RUN bundle install
EXPOSE 4567

ENTRYPOINT ["ruby", "web.rb", "-o", "0.0.0.0"]
