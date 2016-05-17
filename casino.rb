require 'pry'
require_relative 'mechanics/user_input'
Dir[File.dirname(__FILE__) + '/mechanics/*.rb'].each {|file| require file}

class Casino
    include Mechanics

    attr_accessor :user_profile
    def initialize
      @user = user
      @money = money
      user
    end

    def user
      user_profile = Mechanics::UserProfile.new
      puts Mechanics::Menu.main_menu(user_profile)

    end

end


@game = Casino.new
