

require "nokogiri"
require "open-uri"

$doc = Nokogiri::HTML(open("http://www.gosugamers.net/lol/rankings"))


$teams = []




class Team
	def initialize(name, nationality, rank)
		@name = name
		@nationality = nationality
		@rank = rank
	end

	def print_name
		puts @name
	end

	def print_nationality
		puts @nationality
	end

	def print_rank
		puts @rank
	end
end


def get_data()

	for i in 0...50
		name_count = (i * 2) + 1
		
		nationality_count = i * 2
		
		$teams.push(Team.new($doc.css("span span")[name_count].text, $doc.css("span span")[nationality_count]["title"], i+1))
	end
end

# Hey Brother!


def main
	for i in 0...100
		$teams[i].print_rank
		$teams[i].print_name
		$teams[i].print_nationality
		puts "_________"
		puts "_________"
		puts "_________"
	end
end

get_data()
main()

