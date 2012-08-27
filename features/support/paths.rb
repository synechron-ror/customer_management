module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  # When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /the home\s?page/
      '/'
    when /the sign up page/
      '/signup'
      when /the account page/
      '/account'
    when /the sign in page/
      '/login'
    when /the products page/
      '/products'
    when /the brands page/
      '/brands/John-Player'
    when /the admin page/
      '/admin'
    when /the contact-us page/
      #'/contact-us'
    when /the conditions index page/
      #'/admin/conditions'
    when /the conditions new page/
      '/admin/conditions/new'
    when /the brands index page/
      '/admin/brands'
    when /the brands new page/
      '/admin/brands/new'
    when /the admin configuration page/
      '/admin/configurations'
    when /the products index page/
      '/admin/products'
    when /the products new page/
      '/admin/products/new'
    when /the seasons index page/
      '/admin/seasons'
    when /the seasons new page/
      '/admin/seasons/new'
    when /the condition categories index page/
      '/admin/condition_categories'
    when /the condition categories new page/
    '/admin/condition_categories/new'
    when /the categories index page/
    '/admin/categories'
    when /the categories new page/
    '/admin/categories/new'
     when /the brands page/
      '/brands/John-Player'


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    # when /^(.*)'s profile page$/i
    # user_profile_path(User.find_by_login($1))

    else
#      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
#        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
