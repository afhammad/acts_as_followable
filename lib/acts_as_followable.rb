%w( acts_as_followable/version
    acts_as_followable/followable
).each do |lib|
    require File.join(File.dirname(__FILE__), lib)
end

ActiveRecord::Base.send(:include, ActsAsFollowable::Followable)
