class OscalModelsController < ApplicationController
  def index
    @oscal_models = OscalModel.all
  end

  def show
    @oscal_model = OscalModel.find(params[:id])
  end

  def new
    @oscal_model = OscalModel.new
  end

  def create
    @oscal_model = OscalModel.new(oscal_model_params)
    if @oscal_model.save
      redirect_to @oscal_model
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @oscal_model.update(oscal_model_params)
      redirect_to @oscal_model
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @oscal_model.destroy
    
    redirect_to oscal_models_path
  end

  private

  def set_oscal_model
    @oscal_model = OscalModel.find(params[:id])
  end

  def oscal_model_params
    params.expect(oscal_model: [ :title ])
  end
end
