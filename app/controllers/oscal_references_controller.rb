class OscalReferencesController < ApplicationController
  def index
    @oscal_references = OscalReference.all
  end

  def show
    @oscal_reference = OscalReference.find(params[:id])
  end

  def new
    @oscal_reference = OscalReference.new
  end

  def create
    @oscal_reference = OscalReference.new(oscal_reference_params)
    if @oscal_reference.save
      redirect_to @oscal_reference
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @oscal_reference.update(oscal_reference_params)
      redirect_to @oscal_reference
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @oscal_reference.destroy
    
    redirect_to oscal_references_path
  end

  private

  def set_oscal_reference
    @oscal_reference = OscalReference.find(params[:id])
  end

  def oscal_reference_params
    params.expect(oscal_reference: [ :title ])
  end
end
