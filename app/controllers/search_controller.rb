class SearchController < ApplicationController
before_action :s_tenant, only: %i[show]
    def index
    end

    def show
      @searching = Monitoring.all
    end
    
    def new
    end



private

def s_tenant
    
    
 @searching = Monitoring.find_by(tenant_id: params[:tenant_id])
      
    

end

def fing_par
params.require(:search).permit(:receive_type)


end


end
