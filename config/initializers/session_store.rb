# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gmapradio_session',
  :secret      => '02b72252c88411e30f5a7c7f72c3a5853da6fe39d9a6ec246ffc288a4abb23bb5f20e57f81bd55238b0d0bd4fda8d667d2f697bdf84281d94e59857eeb2fb59a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
