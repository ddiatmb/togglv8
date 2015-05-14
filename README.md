# Toggl API v8
[Toggl](http://www.toggl.com) is a time tracking tool.

[rackspace-toggl](/) is a Ruby Wrapper for [Toggl API v8](https://github.com/toggl/toggl_api_docs). It is designed to mirror the Toggl API as closely as possible. This repo is a fork of Tom Kanes original TogglV8 implementation with additional API calls to support some undocumented features of the TogglV8 API.

**Note:** Currently rackspace-toggl only includes calls to [Toggl API](https://github.com/toggl/toggl_api_docs/blob/master/toggl_api.md), not the [Reports API](https://github.com/toggl/toggl_api_docs/blob/master/reports.md)

# Usage
- See [test.rb](test.rb) and [atest.rb](atest.rb) for examples of calling the Toggl API with Ruby.
- See [API calls.md](API calls.md) for examples of calling the Toggl API with resty (like curl) on the command line.

# Acknowledgements
- Thanks to [Koen Van der Auwera](https://github.com/atog) for the [Ruby Wrapper for Toggl API v6](https://github.com/atog/toggl)
- Thanks to the Toggl team for exposing the API.
- Thanks to Tom Kane for the [TogglV8 gem](https://github.com/kanet77/togglv8).

# License
Copyright (c) 2013 Tom Kane. Released under the [MIT License](http://opensource.org/licenses/mit-license.php). See [LICENSE](LICENSE) for details.
