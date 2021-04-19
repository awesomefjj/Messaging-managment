class MonitoringsController < ApplicationController
  before_action :set_monitoring, only: %i[ show edit update destroy ]

  # GET /monitorings or /monitorings.json
  def index
    @monitorings = Monitoring.all
  end

  # GET /monitorings/1 or /monitorings/1.json
  def show
   
  end

  # GET /monitorings/new
  def new
    @monitoring = Monitoring.new
  end

  # GET /monitorings/1/edit
  def edit
  end

  # POST /monitorings or /monitorings.json
  def create
    @monitoring = Monitoring.new(monitoring_params)

    respond_to do |format|
      if @monitoring.save
        format.html { redirect_to @monitoring, notice: "Monitoring was successfully created." }
        format.json { render :show, status: :created, location: @monitoring }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monitoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitorings/1 or /monitorings/1.json
  def update
    respond_to do |format|
      if @monitoring.update(monitoring_params)
        format.html { redirect_to @monitoring, notice: "Monitoring was successfully updated." }
        format.json { render :show, status: :ok, location: @monitoring }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monitoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitorings/1 or /monitorings/1.json
  def destroy
    @monitoring.destroy
    respond_to do |format|
      format.html { redirect_to monitorings_url, notice: "Monitoring was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoring
      @monitoring = Monitoring.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monitoring_params
      params.require(:monitoring).permit(:tenant_id, :receive_id, :receive_type, :kind, :title, :content, :event_id, :extra_data, :deleted_t, :created_t)
    end
end
