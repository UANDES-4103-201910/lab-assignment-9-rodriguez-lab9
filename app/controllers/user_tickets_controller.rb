class UserTicketsController < ApplicationController
	def create
		@user_tcket = UserTicket.new
		@user_tcket = UserTicket.create(user_id: current_user, ticket_id: params[:ticket], paid: true, time: DateTime.now())
		@user_tcket.save
		redirect_to events_path
	end


end
