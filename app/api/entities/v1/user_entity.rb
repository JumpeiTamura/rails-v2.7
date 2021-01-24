module Entities::V1
    class UserEntity < RootEntity
        expose :name, :email, :age
    end
end
