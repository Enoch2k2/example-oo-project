class Cli
  def run
    puts "Hello World!"
    menu
  end

  def menu
    puts "Type create to create an user, list to list users, exit to exit program"
    input = gets.strip.downcase
    if input == "create"
      create_user
      menu
    elsif input == "list"
      list_users
      menu
    elsif input == "exit"
      puts "Goodbye!"
      exit
    else
      puts "invalid command"
      menu
    end
  end

  def create_user
    puts "What is the name of your user"
    name = gets.strip
    User.create(name)
  end

  def list_users
    User.all.each do |user|
      puts user.name
    end
  end
end