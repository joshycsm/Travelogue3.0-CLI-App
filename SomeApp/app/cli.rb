class Cli
    attr_reader :user

    def initialize(user)
        @user = user
    end

    
    def start
        puts "Welcome #{user.name}!"
        if Traveler.find_by(name: user.name)
            @traveler = Traveler.find_by(name: user.name)
        else
            @traveler = Traveler.create(name: user.name)
        end
        # puts "Hey there #{Traveler.find(@traveler.id).name}"
        # binding.pry
        crud_menu
    end
    
    def crud_menu
        puts "Please choose 1, 2, 3, 4 or 5:"
        puts "1. Create a recommendation for a country"
        puts "2. Read recommendations for a country" 
        puts "3. Update a recommendation for a country"
        puts "4. Delete a recommendation for a country"
        puts "5. Exit App"
        option_choice =gets.chomp.to_i

        if option_choice == 1
            create_recommendation
        elsif option_choice == 2
            read_recommendation
        elsif option_choice == 3
            update_recommendation
        elsif option_choice == 4
            delete_recommendation
        elsif option_choice == 5
            puts "Happy travels!"
            exit
        else
            puts "Invalid choice!"
            crud_menu
        end
    end

    def choose_country
        puts "What country are you interested in?"
        chosen_name = gets.chomp.downcase
        @new_country = Country.create(name: chosen_name)
        puts "The country you are interested in is #{@new_country.name.capitalize}!"
    end
    
    def create_recommendation
        choose_country
        puts "For the country #{@new_country.name.capitalize}, what is your recommendation?"
        recommended_attraction = gets.chomp
        new_recommendation = Recommendation.create(attraction: recommended_attraction, traveler: @traveler, country: @new_country)
#binding.pry
        puts "Whoohoo! You made this recommendation: #{new_recommendation.attraction}!"
        crud_menu
    end

    def read_recommendation
        choose_country

        if @new_country.name == "japan"
            # puts "Nihongo-o rules! #{Recommendation.all.first.attraction}"
            puts "#{user.name} you might love the #{Recommendation.find(1).attraction}!"
        elsif @new_country.name == "italy"
            puts "#{user.name} you might love the #{Recommendation.find(5).attraction}!"
        else
            puts "Sorry, there are only two great countries to travel to at the moment, Japan or Italy."
            read_recommendation
        end
        crud_menu
    end

    def update_recommendation
        choose_country

        if @new_country.name == "japan" || @new_country.name == "italy"
            change_database_recommendation(@new_country.name)
            # # binding.pry
            # current_recommendation = Country.find_by(name: "Japan").recommendations.first
            # puts "The first recommendation for Japan is #{current_recommendation.attraction}."
            # puts "What would you like to change it to?"
            # changed_attraction = gets.chomp
            
            # current_recommendation.update(attraction: changed_attraction)

            # puts "You changed the recommendation for Japan to #{current_recommendation.attraction}.  Thanks!"
        else
            puts "Sorry, only Japan or Italy can be updated.  Try again!"
            update_recommendation
        end
    end
    
    def change_database_recommendation(updated_country)
        current_recommendation = Country.all.find_by(name: updated_country).recommendations.first
        binding.pry
        puts "The first recommendation for #{updated_country.capitalize} is #{current_recommendation.attraction}."
        puts "What would you like to change it to?"
        changed_attraction = gets.chomp
        
        current_recommendation.update(attraction: changed_attraction)

        puts "You changed the recommendation for #{updated_country.capitalize} to #{current_recommendation.attraction}.  Thanks!"
        crud_menu
    end

    def delete_recommendation
        choose_country
        
        puts "The recommendation for #{@new_country.name} has been deleted from Traveler's Insight."
    end
end