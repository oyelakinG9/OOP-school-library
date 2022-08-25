require './person'
require './book'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end
  
end

friend = Person.new(12, 'Carlos')
book1 = Book.new('565', 'Andres')
