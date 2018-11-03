class UsuarioTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticity_token,
    raise: false
    def create
        @usuario=Usuario.where("email = ?", params[:auth][:email]).first;
        render json: {
            jwt: auth_token.token,
            id: @usuario.id
        }, status: :created
    end
end
