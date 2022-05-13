class Main
  def main
    puts "Welcome to School Library App\n
    Please choose an option by enterin a number:\n
    1- List all books
    2- List all people
    3- Create a person
    4- Create a book
    5- Create a rental
    6- List all rental for a given id
    7- exit"

    option = gets.chomp.to_i
    case option
    when 1

    end
  end
end

my_main = Main.new
my_main.main
