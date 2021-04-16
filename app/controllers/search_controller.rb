class SearchController < ApplicationController
before_action :s_tenant, only: %i[show new index]
    def index
       @searching = Monitoring.all
    end

    def show
        @searching = Monitoring.all
    end
    def new
        
    end



private

def s_tenant
    
    
 @searching = Monitoring.find_by(receive_type: params[:receive_type])
      
    

end


end
