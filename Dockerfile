ARG RUBY_VERSION=2.7.4
FROM ruby:$RUBY_VERSION
ARG JEKYLL_VERSION=3.9.3
ENV JEKYLL_VERSION $JEKYLL_VERSION
RUN gem install jekyll -v ${JEKYLL_VERSION}
RUN gem install github-pages -v 228
RUN mkdir -p /srv/jekyll
WORKDIR /srv/jekyll
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV JEKYLL_ENV=production
EXPOSE 4000
