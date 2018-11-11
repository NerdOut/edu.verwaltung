module ApplicationHelper
  def link_to(text, path, options={})
  super(text, path, options) unless options[:admin] and !current_user.admin?
  end
end
