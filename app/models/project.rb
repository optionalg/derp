class Project < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :errors, :inverse_of => :project
end
