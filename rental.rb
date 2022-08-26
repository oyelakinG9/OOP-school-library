require './person'
require './book'

class Rental
  attr_accessor :date, :book, :person
  attr_reader :rentals

  def initialize(date, book, person)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end
end

# friend = Person.new(12, 'Carlos')
# book1 = Book.new('565', 'Andres')

# book1.add_rental('25-08-2022', book1)
# p book1.rentals.first
# p book1.rentals.first.person.name

# friend.add_rental('01-01-2022', book2)

# p friend.rentals
# p friend.rentals.first.book.tittle
# p friend.rentals.length
