# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Create or update the admin user
# The credentials can be specified through environment variables or by changing the default values below.
# `dup` is required to ensure strings passed to activerecord are not frozen
login = ENV.fetch('PROJECT_MONITOR_LOGIN', 'admin').dup
email = ENV.fetch('PROJECT_MONITOR_EMAIL', 'admin@example.com').dup
password = ENV.fetch('PROJECT_MONITOR_PASSWORD', 'password').dup

user = User.where(login: login).first_or_initialize
user.email = email
user.password = password
user.save!
