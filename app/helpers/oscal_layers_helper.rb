module OscalLayersHelper
  def oscal_layers_form(disabled = false)
    render "/oscal_layers/shared/oscal_layers_form", disabled: disabled
  end
end
