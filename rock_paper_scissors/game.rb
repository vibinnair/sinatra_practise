require 'sinatra'

before do
	content_type :txt
	@loosing_throw = {rock: :scissors, paper: :rock, scissors: :paper}
	@valid_throws = @loosing_throw.keys
end

get '/throw/:type' do
	player_throw = params[:type].to_sym

	unless @valid_throws.include?(player_throw)
		halt 403, "You must throw one of the following: #{@valid_throws}" 
	end

	computer_throw = @valid_throws.sample

	if computer_throw == player_throw
		'You tied with the computer. Try Again!'
	elsif computer_throw == @loosing_throw[player_throw] 
		"Nicely done; #{player_throw} beats #{computer_throw}!"
	else
		"Ouch! #{computer_throw} beats #{player_throw}. Better luck next time!"
	end
	    	    
end