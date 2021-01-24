module Resources::V1
    class Root < Grape::API
        version 'v1'
        format :json
        content_type :json, 'application/json'

        mount Users

        # swaggerの設定
        if defined? GrapeSwaggerRails
            add_swagger_documentation(
                api_version: 'v1',
                base_path: '',
                hide_documentation_path: true,
                hide_format: true
            )
        end
    end
end
