class OscalLayersController < ApplicationController
  before_action :set_oscal_layer, only: %i[ show edit update destroy ]

  def index
    @oscal_layers = OscalLayer.all
  end

  def show
  end

  def new
    @oscal_layer = OscalLayer.new
  end

  def create
    @oscal_layer = OscalLayer.new(oscal_layer_params)
    if @oscal_layer.save
      redirect_to oscal_layers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @oscal_layer.update(oscal_layer_params)
      redirect_to @oscal_layer
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @oscal_layer.destroy
    
    redirect_to oscal_layers_path
  end

  private

  def set_oscal_layer
    @oscal_layer = OscalLayer.find(params[:id])
  end

  def oscal_layer_params
    params.expect(oscal_layer: [ :title, :description ])
  end
end
