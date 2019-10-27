FROM ruby:alpine as builder

RUN apk add --no-cache build-base \
  && addgroup -S rubocop \
  && adduser -S -g rubocop rubocop \
  && gem install rubocop --no-document \
  && rm -rf /usr/local/bundle/cache/*.gem \
  && find /usr/local/bundle/gems/ -name "*.c" -delete \
  && find /usr/local/bundle/gems/ -name "*.o" -delete

LABEL repository="https://github.com/oozou/actions"
LABEL maintainer="Alireza Bashiri <ali@oozou.com>"

LABEL "com.github.actions.name"="rubocop"
LABEL "com.github.actions.description"="RuboCop is a Ruby static code analyzer and code formatter."
LABEL "com.github.actions.icon"="flag"
LABEL "com.github.actions.color"="red"

FROM ruby:alpine
COPY --from=builder /usr/local/ /usr/local/
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
