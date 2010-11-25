class Follow < ActiveRecord::Base
  belongs_to :followable, :polymorphic => true
  belongs_to :follower, :polymorphic => true

  scope :for_follower_type, lambda { |follower_type| where("follower_type = ?", follower_type) }
  scope :for_followable_type, lambda { |followable_type| where("followable_type = ?", followable_type) }
  scope :for_follower, lambda { |follower| where(["follower_id = ?", follower.id]).for_follower_type(follower.class.name) }
  scope :for_followable, lambda { |followable| where(["followable_id = ?", followable.id]).for_followable_type(followable.class.name) }
end