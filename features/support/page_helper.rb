Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file }

module Pages
    def login
        @login ||= LoginPage.new
    end

    def register
        @register ||= RegisterPage.new
    end

    def account
        @account ||= MyAccountPage.new
    end
end