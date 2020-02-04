
class Author
'require pry'
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books 
        Book.all.select {|book|book.author == self}
    end

    def write_book(title,word_count)
        book = Book.new(title,word_count)
        book.author = self
        book
    end

    def total_words
        words_array = self.books.map{|book|book.word_count}
        words_array.reduce(0) {|total,num|total + num}
    end

    def self.most_words
        each_author_total_words = @@all.map {|author|author.total_words} #array with each authors total words
        most_words_count = each_author_total_words.max # of most words
        @@all.find {|author|most_words_count == author.total_words} #use select/find that will use return any values that satisfies the conditional
    end




end
