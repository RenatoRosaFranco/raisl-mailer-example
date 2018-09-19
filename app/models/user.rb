class User < ApplicationRecord
    # aqui digo que depois da criação no banco ele envia um e-mail
    after_create :send_email
 
    # Crio um metodo que vai enviar o email
    def send_email
        # Aqui falo que ele vai enviar o e-mail usando a classe UserMailer
        UserMailer.welcome(self).deliver_now
    end
end
