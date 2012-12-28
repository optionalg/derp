class Error < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  belongs_to :project, :inverse_of => :errors

  validates_presence_of :project_id
end
