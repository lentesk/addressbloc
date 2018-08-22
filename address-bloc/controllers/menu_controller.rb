require_relative '../models/address_book'

class MenuController
	attr_reader :address_book

 def initialize
 	@address_book = AddressBook.new
 end

 def main_menu
	 puts "Main Menu - #{address_book.entries.count} entries"
	 puts "1 - View all entries"
	 puts "2 - View Entry Number n"
	 puts "3 - Create an entry"
	 puts "4 - Search for an entry"
	 puts "5 - Import entries from a CSV"
	 puts "6 - Exit"
	 print "Enter your selection: "

	 selection = gets.to_i
	 
	 case selection
	 	when 1
	 		system "clear"
	 		view_all_entries
	 		main_menu
	 	when 2
	 		system "clear"
	 		view_entry_n
	 		main_menu
	 	when 3
	 		system "clear"
	 		create_entry
	 		main_menu
	 	when 4
	 		system "clear"
	 		search_entries
	 		main_menu
	 	when 5
	 		system "clear"
	 		read_csv
	 		main_menu
	 	when 6
	 		puts "Good-bye"

	 		exit(0)

	 	else
	 		system "clear"
	 		puts "Sorry, that is not a valid input"
	 		main_menu
 		end
 	end

	def view_all_entries
   # #14
   address_book.entries.each do |entry|
     system "clear"
     puts entry.to_s
   # #15
     entry_submenu(entry)
     end

   	system "clear"
   	puts "End of entries"
   end

   def view_entry_n

   	system "clear"
    puts "Which entry number?"

   	print "Entry number: "
   	address_book.entries.select{|entry| entry==gets.chomp }

   	system "clear"
   	puts "Selected"
   end

 	def create_entry
 		system "clear"
 		puts "New AddressBloc Entry"

 		print "Name: "
 		name = gets.chomp
 		print "Phone number: "
 		phone = gets.chomp
 		print "Email: "
 		email = gets.chomp

 		address_book.add_entry(name, phone, email)

 		system "clear"
 		puts "New entry created"
 	end

 	def search_entries
 	end

 	def read_csv
 	end

 	def entry_submenu(entry)

 		puts "n - next entry"
 		puts "d - delete entry"
    puts "e - edit this entry"
    puts "m - return to main menu"

    selection = gets.chomp

    case selection
    when "n"
    when "d"
    when "e"
    when "m"
    	system "clear"
    	main_menu
    else
    	system "clear"
    	puts "#{slection} is not a valid input"
    	entry_submenu(entry)
    end
  end
end
