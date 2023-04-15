class User 

    attr_reader :id, :username, :library

    def initialize(id, username, library)
        @id = id
        @username = username
        @library = library
    end
end

class Book

    attr_reader :id, :title, :author, :users_ids

    def initialize(id, title, pages, author)
        @id = id
        @title = title
        @pages = pages
        @author = author
        @users_ids = []
    end

end


class Library

    def initialize
        @collection = []
    end

    def add_book(id, title, pages, author )
        book = Book.new(id, title, pages, author)
        @collection << book
    end

    def assign_book_to_user(user_id, book_id)
        book = @collection.select{|book| book.id == book_id }
        book[0].users_ids << user_id
    end

    def my_books(user_id)
        selected_books = @collection.select{|book| book.users_ids.include?(user_id) }
        selected_books.each do |selected_book|
            puts "#{selected_book.id}, #{selected_book.title}"
        end
    end

    def books
        @collection.each do |book|
            # puts book.title
            puts "id #{book.id}, Title: #{book.title}, Author:#{book.author}"
        end
    end
end

library = Library.new

#Add books to library
library.add_book( 1, "Game of thrones", 1000, "James bhai cameron" )
library.add_book( 2, "Harry potter", 2000, "lilly ben" )
library.add_book( 3, "pirates of carribean", 4000, "Disney hotstar ji" )
library.add_book( 4, "mahabharat", 70000, "vedvyas bha" )

puts "---------Book list-----------"
library.books
puts "--------------------"

#Create a user
user = User.new(1, "Darshan kumar", library)

puts "User: #{user.username}"
user.library.assign_book_to_user(user.id, 1)
user.library.assign_book_to_user(user.id, 2)
user.library.my_books(user.id)


puts "------------------------------------------------------"
#Create a user
user = User.new(2, "Vishal Thakor", library)

puts "User: #{user.username}"
user.library.assign_book_to_user(user.id, 3)
user.library.assign_book_to_user(user.id, 4)
user.library.assign_book_to_user(user.id, 1)

user.library.my_books(user.id)


