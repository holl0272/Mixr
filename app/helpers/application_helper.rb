module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to(@auth.username + ' | ' + 'Logout', '/login', :method => :delete, :remote => true, :class => 'button round secondary username')}</li>"
    end
  end
end