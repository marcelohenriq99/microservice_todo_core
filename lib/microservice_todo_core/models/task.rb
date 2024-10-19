module MicroserviceTodoCore
  module Models
    class Task < ApplicationRecord
      belongs_to :user

    end
  end
end
