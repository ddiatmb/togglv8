require 'faraday'
require 'r-toggl/version'
require 'r-toggl/connection'
require 'r-toggl/toggl_v8'
require 'r-toggl/reports_v2'

module Toggl
  LIBNAME = 'r-toggl'

  LIBDIR = File.expand_path("../#{LIBNAME}", __FILE__)
end
