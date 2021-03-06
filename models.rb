#require 'bundler/setup'
#Bundler.require

#if development?
ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
#end

class User < ActiveRecord::Base
	has_secure_password
	validates :mail,
		presence: true,
		format: {with:/.+@.+/}
	validates :password,
		length: {in: 5..10}
end

#unless ENV['RACK_ENV'] == 'production'
#    ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
#end

