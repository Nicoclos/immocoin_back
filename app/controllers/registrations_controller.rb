class RegistrationsController < Devise::RegistrationsController

  def create
    puts "test"
    build_resource(sign_up_params)
    resource.save
    sign_up(resource_name, resource) if resource.persisted?

    render_jsonapi_response(resource)
   
   
  end
end