module Vhx
  class Customer < VhxObject
    include Vhx::ApiOperations::Create
    include Vhx::ApiOperations::Request
    include Vhx::ApiOperations::List
    include Vhx::ApiOperations::Delete
  end
end