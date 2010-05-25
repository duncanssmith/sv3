# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sv3_session',
  :secret      => '5ee8df740f21c8dd94ef61f334456374f84a4a854923623efbbdddc2741cf1c5f839e45a74d2cb9fe3f99309e1e81b840afa9668d4c4a184b87aae502e6b13d6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
