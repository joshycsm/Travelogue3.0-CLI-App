class Cli
    attr_reader :traveler

    def initialize(traveler)
        @traveler = traveler
    end

    def start
        puts "Welcome #{traveler.name}!"
        if Traveler.find_by(name: traveler.name)
            @traveler = Traveler.find_by(name: traveler.name)
        else
            @traveler = Traveler.create(name: traveler.name)
        end
        puts "Hey there #{Traveler.find(@traveler.id).name}"
        binding.pry
        view_create_option
    end

    def view_create_option
        puts "Please choose 1, 2, 3, or 4:"
        puts "1. View recommendations for a country" 
        puts "2. Create a recommendation for a country"
        puts "3. Update a recommendation for a country"
        puts "4. Exit App"
        option_choice =gets.chomp.to_i

        if option_choice == 1
            choose_country
        elsif option_choice == 2
            create_country
        elsif option_choice == 3
            update_recommendation
        elsif option_choice == 4
            puts "Happy travels!"
            exit
        else
            puts "Invalid choice!"
            view_create_option
        end
    end

    def choose_country
        puts "What country are you interested in?"
        country_choice = gets.chomp.downcase

        if country_choice == "japan"
            # puts "Nihongo-o rules! #{Recommendation.all.first.attraction}"
            puts "#{traveler.name} you might love the #{Recommendation.find(1).attraction}!"
        elsif country_choice == "italy"
            puts "#{traveler.name} you might love the #{Recommendation.find(5).attraction}!"
        else
            puts "Wrong, there are only two great countries to travel to, your love is wrong."
            choose_country
        end
        view_create_option
    end

    def create_country
        puts "What country is your recommendation for?"
        chosen_name = gets.chomp
        @new_country = Country.create(name: chosen_name)
        puts "You can now create a recommendation for #{@new_country.name}!"

        recommendation_option
    end

    def recommendation_option
        puts "Would you like to add any recommendations for this country? Please choose 1 for yes or 2 for no."
        option_choice =gets.chomp.to_i

        if option_choice == 1
            create_recommendation
        elsif option_choice == 2
            view_create_option
        else
            puts "Try again!"
            recommendation_option
        end

        view_create_option
    end

    def create_recommendation
        puts "For the country #{@new_country.name}, what is your recommendation?"
        recommended_attraction = gets.chomp
        new_recommendation = Recommendation.create(attraction: recommended_attraction, traveler: @traveler, country: @new_country)
#binding.pry
        puts "Whoohoo! You made this recommendation: #{new_recommendation.attraction}!"
        view_create_option
    end
    
    def update_recommendation
        puts "Which country's recommendation do you want to update, Japan or Italy?"
        updated_country = gets.chomp.downcase

        if updated_country == "japan"
            binding.pry
            puts "The current recommendations for Japan is #{Country.find_by(name: "Japan").recommendations}"
        end


        
    end

    def delete_recommendation
        
    end
end