module ApplicationHelper
	#assistant pour le titre
	def titre
		titre_base = "Sample App"
		if @titre.nil?
			titre_base
		else
			"#{titre_base} | #{@titre}"			
		end
	end
end
