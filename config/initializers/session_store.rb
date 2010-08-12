# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_memo_session',
  :secret      => '7204dc736bc3e9b62200cabda3dc471f0452a5085c3a906974b24b48275abcfbde64b41f06c8ab297514c2c9df20188b0e1f908161b9488cd1f433d1453310a7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
