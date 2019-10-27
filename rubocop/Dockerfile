FROM ruby:2.6.3-alpine3.8@sha256:70227bd490856f24614a636f5c7bacdd58167477f042593822dd49e33097c602

LABEL repository="https://github.com/oozou/actions"
LABEL maintainer="Alireza Bashiri <ali@oozou.com>"

LABEL "com.github.actions.name"="rubocop"
LABEL "com.github.actions.description"="RuboCop is a Ruby static code analyzer and code formatter."
LABEL "com.github.actions.icon"="flag"
LABEL "com.github.actions.color"="red"

RUN apk add --no-cache \
  build-base=~0.5

RUN addgroup -S rubocop && \
  adduser -S -g rubocop rubocop

RUN gem install rubocop --no-document

COPY --chown=rubocop:rubocop entrypoint.sh /usr/local/entrypoint.sh
ENTRYPOINT ["/usr/local/entrypoint.sh"]