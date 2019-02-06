require 'capybara'

class MyAccountPage < SitePrism::Page
    element :account_name, '//a[@class="account"]/span'
    element :btn_logout, '.logout'
    element :myAccount, '.page-heading'

  def log_out
    btn_logout.click
   end 
end