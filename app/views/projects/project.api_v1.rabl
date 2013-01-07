object @project
attributes :name, :created_at, :updated_at
child :errors do
  extends "errors/error"
end
