# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cassandras_dream_session',
  :secret      => '51d5abd4e91be80a0d2f6a79657fd2fec22f91eb5b859b624bdca1faff61eda900ee38c962a2d44d51e9d0fa73a20bc8a6d508de377cd53fba22d947bb64b831'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
