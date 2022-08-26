require './app'

def mains
  puts ''
  puts 'Please choose an option by enterin a number:'
  options = ['List all books', 'List all people', 'Create a person', 'Create a book', 'Create a rental',
  'List all rentals for a given person id', 'Exit']
  options.each_with_index { |v, k| puts "#{k + 1} - #{v}" }

  selected = gets.chomp

  list_all_books if selected.to_a_list == 1
  list_all_people if selected.to_a_list == 2
  create_a_person if selected.to_a_list == 3
  create_a_book if selected.to_a_list == 4
  create_a_rental if selected.to_a_list == 5
  list_all_rental_by_id if selected.to_i == 6
  puts 'Thank you for using this app!' if selected.to_a_list == 7
end

puts 'Welcome to School Library App!'

main