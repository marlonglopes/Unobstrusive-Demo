# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_teste1_session',
  :secret      => '769c6be3ea9fc7e2d7c50a5779d91c7aa2329ff9bb2d1e658e9b3a697e9cc0b88f5b95fe5ee0975cae276417dde695d2ac5f1562e945ecf29cddb05b6e58ebb9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
