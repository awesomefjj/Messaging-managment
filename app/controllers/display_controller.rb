class DisplayController < ApplicationController
before_action :get_num, :today, only: %i[index]

def new
    
end

def index
  
  
end

def  show
    
end

private

def get_num

    @displays = Monitoring.last(5)
    @display_all =Monitoring.all
end

def today

    @today_num = Monitoring.where(created_t: Time.now.midnight..(Time.now.midnight + 1.day))
end

end