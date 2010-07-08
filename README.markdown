# Bigrecord Example

example app using Apache Cassandra with Bigrecord and Bigindex

# Requirements

* ruby 1.8.7 >= 0
* rubygems 1.3.7
* rails 2.3.5

# Dependencies

* bundler
* Apache Cassandra

# Configuration

* copy bigrecord.yml.example to bigrecord.yml
* copy bigindex.yml.example to bigindex.yml
* `bundle install`

# Running

* run Cassandra by `apache-cassandra-dir/bin/cassandra -f`
* to use Bigindex run `rake bigindex:solr:start`
* `bundle exec script/server`

# Indexes

* if you add new/modify indexes run `rake bigindex:rebuild_index`
