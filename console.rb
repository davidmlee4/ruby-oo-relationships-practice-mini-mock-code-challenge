require 'pry'
require_relative './book'
require_relative './author'


scottf = Author.new("Scott Fitzgerald")
harper = Author.new("Harper Lee")

scottf.write_book("The Great Gatsby",12)
scottf.write_book("Autobiography",6)
harper.write_book("To Kill A Mockingbird",52)

Book.all


binding.pry




