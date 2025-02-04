module ApplicationHelper
  def role_options
    User.roles.map { |key, _value| [key.humanize, key] }
  end

  def no_admin_role_options
    arr = User.roles.map { |key, _value| [key.humanize, key] }
    arr.delete_at(0)
    arr
  end
end
