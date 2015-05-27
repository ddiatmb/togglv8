#! /usr/bin/env rvm ruby-1.9.3-head do ruby
# encoding: utf-8

module Toggl
  module Connection
    attr_accessor :conn, :debug

    def connection(username, password, url = nil)
      Faraday.new(url: url) do |faraday|
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
        faraday.headers = {"Content-Type" => "application/json"}
        faraday.basic_auth username, password
      end
    end

    def debug_on(debug=true)
      puts "debugging is %s" % [debug ? "ON" : "OFF"]
      @debug = debug
    end

    def checkParams(params, fields=[])
      raise ArgumentError, 'params is not a Hash' unless params.is_a? Hash
      return if fields.empty?
      errors = []
      for f in fields
        errors.push("params[#{f}] is required") unless params.has_key?(f)
      end
      raise ArgumentError, errors.join(', ') if !errors.empty?
    end

    #---------------#
    #--- Private ---#
    #---------------#

    private

    def get(resource)
      puts "GET #{resource}" if @debug
      full_res = self.conn.get(resource)
      res = JSON.parse(handle_null(full_res.env[:body]))
      res.is_a?(Array) || res['data'].nil? ? res : res['data']
    end

    def post(resource, data)
      puts "POST #{resource} / #{data}" if @debug
      full_res = self.conn.post(resource, JSON.generate(data))
      if (200 == full_res.env[:status]) then
        res = JSON.parse(handle_null(full_res.env[:body]))
        res['data'].nil? ? res : res['data']
      else
        eval(full_res.env[:body])
      end
    end

    def put(resource, data)
      puts "PUT #{resource} / #{data}" if @debug
      full_res = self.conn.put(resource, JSON.generate(data))
      res = JSON.parse(handle_null(full_res.env[:body]))
      res['data'].nil? ? res : res['data']
    end

    def delete(resource)
      puts "DELETE #{resource}" if @debug
      full_res = self.conn.delete(resource)
      (200 == full_res.env[:status]) ? "" : eval(full_res.env[:body])
    end

    # Handle Toggl API V8 null response which is invalid JSON
    def handle_null(response_body)
      response_body === 'null' ? '[]' : response_body
    end
  end
end