actions :create
default_action :create

attribute :source,     :kind_of => String, :required => true
attribute :path,       :kind_of => String, :name_attribute => true
attribute :owner,      :kind_of => [String, NilClass], :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
attribute :group,      :kind_of => [String, NilClass], :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
attribute :file_mode,  :kind_of => [String, NilClass], :regex => /^0?\d{3,4}$/
attribute :dir_mode,   :kind_of => [String, NilClass], :regex => /^0?\d{3,4}$/
attribute :root,       :kind_of => String, :default => '/'
attribute :exclusions, :kind_of => [Array, NilClass]