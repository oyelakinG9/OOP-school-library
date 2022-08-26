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
