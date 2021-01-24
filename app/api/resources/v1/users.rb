module Resources::V1
    class Users < Grape::API
        resource :users do
            desc 'user list'
            get do
                present User.all
            end

            desc 'user'
            params do
                requires :id, type: Integer, desc: 'user id'
            end
            get ':id' do
                present User.find(params[:id])
            end
        end
    end
end
