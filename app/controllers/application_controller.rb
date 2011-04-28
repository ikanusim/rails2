# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def index
    render :text => <<-EO_INFO
      Ruby: #{RUBY_VERSION rescue 'n/a'}
      Rubygems: #{Gem::VERSION rescue 'n/a'}
      Bundler: #{Bundler::VERSION rescue 'n/a'}
      Passenger: #{PhusionPassenger::VERSION_STRING rescue 'n/a'}
      Database adapter: #{ActiveRecord::Base.connection.adapter_name}
      Rails root: #{Rails.root}
    EO_INFO
  end
end
