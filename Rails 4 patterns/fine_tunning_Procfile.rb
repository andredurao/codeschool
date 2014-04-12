web: bundle exec rails -s -p $PORT
worker: bundle exec rake worker
urgentworker: bundle exec rake urgent_worker
scheduler: bundle exec rake scheduler


# to run Procfile
gem install foreman

# foreman start