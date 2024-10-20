module MicroserviceTodoCore
  module Models
    class User < ApplicationRecord
      validates :email, presence: { message: "can't be blank" },
                        uniqueness: { case_sensitive: false, message: "has already been taken" }
    end
  end
end
