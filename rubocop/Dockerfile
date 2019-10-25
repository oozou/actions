FROM ruby:alpine as builder
RUN apk update \
    && apk add --virtual build-dependencies build-base \
    && true\
    && if [[ -z "${RUBOCOP_VERSION}" ]] ; then\
         gem install rubocop -v "${RUBOCOP_VERSION}";\
         else gem install rubocop; fi \
    && rm -rf /usr/local/bundle/cache/*.gem \
    && find /usr/local/bundle/gems/ -name "*.c" -delete \
    && find /usr/local/bundle/gems/ -name "*.o" -delete

FROM ruby:alpine
COPY --from=builder /usr/local/ /usr/local/
COPY . /action
ENTRYPOINT ["/action/entrypoint.sh"]
