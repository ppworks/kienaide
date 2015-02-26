require "kienaide/version"
require "active_record"

module Kienaide
  def kienaide
    class_eval do
      before_destroy do
        false if self.protected
      end
    end
  end
end

ActiveRecord::Base.extend Kienaide
