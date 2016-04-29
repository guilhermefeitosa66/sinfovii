class CheckoutController < ApplicationController
	before_action :authenticate_user!

	def create
		#pagseguro

		payment = PagSeguro::PaymentRequest.new
		user = User.find(params[:id])

		
			payment.reference = user.id

			payment.items << {
				id: 100,
				description: "Inscrição Básica",
				amount: 20
			}

			if user.shirt != '' && user.shirt != nil
				payment.items << {
					id: 200,
					description: "Camisa ",
					amount: 22
				}
			end 

			if user.courses.count == 1
				user.courses.each do |curso|
					payment.items << {
						id: curso.id,
						description: curso.name,
						amount: 10
					}
					puts "Adicinou um"
				end
			end

			
			if user.courses.count == 2
				user.courses.each do |curso|
					payment.items << {
						id: curso.id,
						amount: 7.5,
						description: curso.name		
					}
					puts "Adicinou dois"
				end
			end



			response = payment.register
			if response.errors.any?
				raise response.errors.join("\n")
			else
				puts response.code
				user.token = response.code
				user.save
				redirect_to response.url
			end

		
	end
end
