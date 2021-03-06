module ResourceAdmin
  class OrganizationsController < ResourceAdmin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Organization.all.paginate(10, params[:page])
    # end

    def update
      super
      @requested_resource.touch(:profile_updated_at)
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Organization.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
