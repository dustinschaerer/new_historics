class ServicesController < InheritedResources::Base

  before_action :authenticate_admin_user!
  before_action :set_service, only: [:edit, :update, :destroy]

   def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_path, notice: 'Service was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:title, :description, :link_text, :link_destination, :sort)
    end
end

