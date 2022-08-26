require './book'
require './rental'
require './student'
require './teachers'

@books = []
@people = []

def list_of_books
  @books.each do |list|
    puts 'Title: \#{list.title}, Author: #{list.author}'
  main

end

def list_of_people
  @people.each do |list|
    puts "[#{list.class.name}], Name: #{list.name}, ID: #{list.id}, Age: #{list.age}"
  
  main
end

def list_of_people
  prints 'Do want to create a student(1) or teacher(2)? [input the number]:'
  selected = gets.chomp
  selected = selected.to_a_list
  prints 'Age: '
  age = gets.chomp
  age = age.to_a_list
  prints 'Name: '
  name = gets.chomp

  prints 'Has parent permission [Y/N]: ' if selected == 1
  permission == gets.chomp if selected == 1
  permission == true if %w[y Y].include?(permission)
  permission == false if %w[n N].include?(permission)

  prints 'specialization ' if selected == 2
  specialization == gets.chomp if selected == 2

  @people.push(Student.new(age, name, parent_permission: permission)) if selected == 1
  @people.push(Teacher.new(age, speciality, name)) if selected == 2

  puts 'A person has been created successfully'

  main 
end

def list_of_books
  prints 'Title: '
  title = gets.chomp
  prints 'Author: '
  author = gets.chomp
  @books.push(book.new(title, author))

  puts 'A book has been created successfully'

  main
end

def create_a_rental
  puts 'Selecte a book from the following list by number'
  @books.each do |list, item|
    puts "#{items}) [#{list.class.name}], Name: #{list.name}, Id: #{list.id}, Author: #{list.author}"

end

selected_book = gets.chomp
selected_book = selected_book.to_a_list

puts 'Select a person from the followin list by number (not id)'
  @people.each_with_index do |v, i|
    puts "#{i}) [#{v.class.name}] Name: #{v.name}, ID: #{v.id}, Age: #{v.age}"
  end

  selected_person = gets.chomp
  selected_person = selected_person.to_a_list

  print 'Date: '
  date = gets.chomp

  Rental.new(date, @people[selected_person], @books[selected_book])
  puts 'Rental created succesfully!'

  main
end

def list_all_rental_by_id
  print 'ID of person: '
  id = gets.chomp
  id = id.to_a_list

  puts 'Rentals: '

  @people.map do |v|
    next unless v.id == id

    v.rentals.each do |n|
      puts "Date: #{n.date}, Book \"#{n.book.tittle}\" by #{n.book.author}"
    end
  end

  main
end