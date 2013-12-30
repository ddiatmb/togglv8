module Togglv8
  class Project
    include TogglCon
    attr_accessor :id, :name

    def initialize(params = {})
      if params[:json].present?
        new_from_json
      else
        @id = params[:project_id]
        @conn = params[:connection]
        load_project
      end
    end

    def new_from_json(json)
      @id = json['id']
      @name = json['name']
    end


    def self.create_project(params)
      checkParams(params, [:name, :wid])
      post "projects", {project: params}
    end

    def update(params)
      put "projects/#{@id}", {project: params}
    end

    def users
      get "projects/#{@id}/project_users"
    end

    private

    def load_project
      response = get "projects/#{@id}"
      @name = response['name']
    end
  end
end