FROM ruby:latest
MAINTAINER Jose Rivera <info@joserivera.org>

# Set up environmental variables for the app
ENV APP_HOME /app
ENV HOME /root

# Install gems
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

# Start server
ENV PORT 3000
EXPOSE 3000
CMD ["ruby", "hello.rb"]
