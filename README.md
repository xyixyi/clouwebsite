# clou website
[![Build Status](https://travis-ci.org/xyixyi/clouwebsite.svg?branch=master)](https://travis-ci.org/xyixyi/clouwebsite)
[![Code Climate](https://codeclimate.com/github/xyixyi/clouwebsite/badges/gpa.svg)](https://codeclimate.com/github/xyixyi/clouwebsite)
[![Test Coverage](https://codeclimate.com/github/xyixyi/clouwebsite/badges/coverage.svg)](https://codeclimate.com/github/xyixyi/clouwebsite/coverage)
[![Issue Count](https://codeclimate.com/github/xyixyi/clouwebsite/badges/issue_count.svg)](https://codeclimate.com/github/xyixyi/clouwebsite)



如果上传图片的时候出现错误：Original Error: ImageMagick/GraphicsMagick is not installed
run:

sudo apt-get update

sudo apt-get install imagemagick --fix-missing

在后台load html (product.detail):
<div class="body" id="productbody"><%= @product.detail.html_safe %></div>

#Setting up elasticsearch for multiple models

Here is the code to install and start elastic search. [reference]

```sh
# Firstly, uninstall:
sudo apt-get --purge autoremove elasticsearch

# then made a fresh install.
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.7.0.deb
sudo dpkg -i elasticsearch-1.7.0.deb

# enable on bootup
sudo update-rc.d elasticsearch defaults 95 10
```

Start the service:
```sh
# Start ElasticSearch 
sudo /etc/init.d/elasticsearch start

# Make sure service is running
curl http://localhost:9200

# Should return something like this:
# {
#  "status" : 200,
#  "name" : "Storm",
#  "version" : {
#    "number" : "1.3.1",
#    "build_hash" : "2de6dc5268c32fb49b205233c138d93aaf772015",
#    "build_timestamp" : "2014-07-28T14:45:15Z",
#    "build_snapshot" : false,
#    "lucene_version" : "4.9"
#  },
#  "tagline" : "You Know, for Search"
#}
```
references:
https://www.sitepoint.com/full-text-search-rails-elasticsearch/
https://github.com/elastic/elasticsearch-rails


bugs:
mainframe/news.erb line 32 may cause error -- yiran


rails g scaffold model_name name:string ll:integer ....

add db in config/initalizers each time add db, Class name


kill rails
http://stackoverflow.com/questions/15072846/server-is-already-running-in-rails

deploy
http://www.jianshu.com/p/fbc7d7dca295

```sh
cap with db:
cap production rails:rake:log:clear
cap production rails:rake:tmp:clear
cap production rails:rake:db:drop
cap production rails:rake:db:reset
cap production rails:rake:db:setup
cap production rails:rake:db:seed
cap production rails:rake:db:migrate
cap production rails:rake:db:rollback
```

```sh

内置task

cap deploy                # Deploys your project.
cap deploy:check          # Test deployment dependencies.
cap deploy:cleanup        # Clean up old releases.
cap deploy:cold           # Deploys and starts a `cold' application.
cap deploy:create_symlink # Updates the symlink to the most recently deployed version.
cap deploy:migrate        # Run the migrate rake task.
cap deploy:migrations     # Deploy and run pending migrations.
cap deploy:pending        # Displays the commits since your last deploy.
cap deploy:pending:diff   # Displays the `diff' since your last deploy.
cap deploy:restart        # Blank task exists as a hook into which to install your own environment specific behaviour.
cap deploy:rollback       # Rolls back to a previous version and restarts.
cap deploy:rollback:code  # Rolls back to the previously deployed version.
cap deploy:setup          # Prepares one or more servers for deployment.
cap deploy:start          # Blank task exists as a hook into which to install your own environment specific behaviour.
cap deploy:stop           # Blank task exists as a hook into which to install your own environment specific behaviour.
cap deploy:symlink        # Deprecated API.
cap deploy:update         # Copies your project and updates the symlink.
cap deploy:update_code    # Copies your project to the remote servers.
cap deploy:upload         # Copy files to the currently deployed version.
cap deploy:web:disable    # Present a maintenance page to visitors.
cap deploy:web:enable     # Makes the application web-accessible again.
cap invoke                # Invoke a single command on the remote servers.
cap shell                 # Begin an interactive Capistrano session.
```

