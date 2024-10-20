module MicroserviceTodoCore
  module Models
    class JwtDenylist < ApplicationRecord
      validates :jti, presence: true, uniqueness: true
    end
  end
end
