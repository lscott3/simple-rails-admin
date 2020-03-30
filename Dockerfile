FROM timbru31/ruby-node:2.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client vim graphviz wkhtmltopdf
WORKDIR /simple-rails-admin
COPY . /simple-rails-admin

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

