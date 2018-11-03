class Usuario < ApplicationRecord
    has_secure_password
    has_many :tareas
    def to_token_payload
        {
            sub: id,
            email: email
        }
    end
end
