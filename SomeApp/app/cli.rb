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
        @chosen_name = gets.chomp.downcase

        if Country.find_by(name: @chosen_name)
            @chosen_country = Country.find_by(name: @chosen_name)
        else
            @chosen_country = Country.create(name: @chosen_name)
        end

        puts "The country you are interested in is #{@chosen_country.name.capitalize}!"
    end
    
    def create_recommendation
        choose_country
        puts "For the country #{@chosen_country.name.capitalize}, what is your recommendation?"
        recommended_attraction = gets.chomp
        new_recommendation = Recommendation.create(attraction: recommended_attraction, traveler: @traveler, country: @chosen_country)
#binding.pry
        puts "Whoohoo! You made this recommendation: #{new_recommendation.attraction}!"
        crud_menu
    end

    def chosen_recommendation
        Recommendation.find_by(id: @chosen_country.id)
    end


    def read_recommendation
        choose_country
        chosen_recommendation

        if chosen_recommendation
            puts "#{user.name} for the country #{@chosen_country.name.capitalize}, the recommendation is #{chosen_recommendation.attraction}!"
        else
            puts "Sorry, #{user.name}. No recommendation exists for #{@chosen_country.name.capitalize}."
        end

        crud_menu
    end

    def update_recommendation
        choose_country
        chosen_recommendation
        if !chosen_recommendation
            puts "Sorry, no recommendation exists for #{@chosen_country.name.capitalize}"
        else
            puts "The first recommendation for #{@chosen_country.name.capitalize} is #{chosen_recommendation.attraction}."
            puts "What would you like to change it to?"
            changed_attraction = gets.chomp

            updated_recommendation = chosen_recommendation.update(attraction: changed_attraction)

            puts "You changed the recommendation.  Thanks!"
        end

        crud_menu
    end

    def delete_recommendation
        choose_country
        
        puts "The recommendation for #{@chosen_country.name.capitalize} has been deleted from Traveler's Insight."
        crud_menu
    end
end