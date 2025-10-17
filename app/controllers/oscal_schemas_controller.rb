class OscalSchemasController < ApplicationController
  def index
    @oscal_schemas = OscalSchema.all
  end

  def show
    @oscal_schema = OscalSchema.find(params[:id])
  end

  def new
    @oscal_schema = OscalSchema.new
  end

  def create
    @oscal_schema = OscalSchema.new(oscal_schema_params)
    if @oscal_schema.save
      redirect_to @oscal_schema
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @oscal_schema.update(oscal_schema_params)
      redirect_to @oscal_schema
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @oscal_schema.destroy
    
    redirect_to oscal_schemas_path
  end

  private

  def set_oscal_schema
    @oscal_schema = OscalSchema.find(params[:id])
  end

  def oscal_schema_params
    params.expect(oscal_schema: [ :title ])
  end
end
