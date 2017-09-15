task :import  => :environment do
	a = User.new(:email => "adm@ouro.com", :password => "avaliacao", :password_confirmation => 'avaliacao')
	if a.save!
		puts "Usuario criado"
	else
		puts "erro  ao criar usuario"
	end
	
end