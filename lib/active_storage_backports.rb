require "active_storage_backports/version"
require "active_record/signed_id"
require "active_support/configuration_file"
require "active_support/core_ext/module/delegation"
require "active_storage"

module ActiveStorageBackports
  class Error < StandardError; end
  # Your code goes here...
end

module ActiveRecord
  class Base
    include SignedId
  end
end
