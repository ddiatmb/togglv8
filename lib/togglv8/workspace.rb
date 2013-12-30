module Togglv8
  class Workspace
    include TogglCon
    attr_accessor :workspace_id

    def initialize(connection, workspace_id)
      @workspace_id = workspace_id
      @conn = connection
    end

    def id
      @workspace_id
    end

    def clients
      get "workspaces/#{@workspace_id}/clients"
    end

    def projects(params={})
      project_list = []
      active = params.has_key?(:active) ? "?active=#{params[:active]}" : ""
      response = get "workspaces/#{@workspace_id}/projects#{active}"
      response.each do |project_json|
        project_list << Project.new(json: project_json)
      end
      project_list
    end

    def users
      get "workspaces/#{@workspace_id}/users"
    end

    def tasks(params={})
      active = params.has_key?(:active) ? "?active=#{params[:active]}" : ""
      get "workspaces/#{@workspace_id}/tasks#{active}"
    end
  end
end