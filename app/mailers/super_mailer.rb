class SuperMailer < ApplicationMailer
	#Se pueden escribir metodos para diferentes tipos de envios de mail
	def example_mail(user) 
		@user = user
		mail(to: "pablo@beerly.cl", subject:"Correo de prueba",
		 template_path:"super_mailer", template_name:"example_view")
	end
end
