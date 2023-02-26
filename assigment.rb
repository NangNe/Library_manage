# tạo 2 class 
# + Book 
#  id: number
#  title: String
#  author: String
#  checkout: Boodle
# + Library
#  create instance method; 
#  addbook
#  remove Book
#  check out Book (cho mựn book)
#  ruturn Book (tra book)
#  list Book

#  + create 1 object Library
#  + create 3 object Book
#  add 3 Book vao object Library
#  show cac boọk co trong library
#  checkout 1 boọk theo id
#  ruturn book bằng book id
#  in ra danh sách book



class Book 
    @@count = 0
    def initialize (id , title, author, checkout )
        @id , @title, @author, @checkout = id , title, author, checkout
        @@count += 1
    end

    def to_hash
        {
        id: @id , 
        title: @title,
        author: @author, 
        checkout: @checkout
    }
    end
    
    $array = Array.new
    # attr_accessor :id , :title, :author, :checkout
    # $search_result_array = Array.new

    
end


# e = hasa.title






class Library < Book
    # ha = Book.new(3,"ha","jss","true")
    # hasa = Book.new(4,"hasa","ajss","true")
    # has = Book.new(6,"hsa","jsfs","true")


    def self.add_book
        puts "Insert Id"
        id = gets.chomp.to_i

        puts "nhap Title"
        title = gets.chomp.to_s

        puts "Insert Author"
        author = gets.chomp.to_s

        checkout = false
        # count1 = @array.count {|array| array[:id] == id}
        # if count1 > 0
        #     puts "id #{id} sách bạn vừa nhập đã tồn tại"
        # else
            new_array = Book.new(id, title, author, checkout)
            $array.push(new_array.to_hash)
        # end
        gets.chomp
        main 
    end
    
    def self.show_book
        $array.each do |n|
            puts n
        end

        puts " Số sách hiện có là  #@@count"

        gets.chomp
        main        
    end

    def self.delete_book 
    #    require Library

        # new_array = Book.new(1, 2, 3, 4)
        # $array.push(new_array.to_hash)
        puts "Insert Id you want delete"
        id = gets.chomp.to_i

        # puts $array[1][:author]

        # $array.delete_at(0)
        idx = $array.find_index { |array| array[:id] == id }
        if idx.nil?
            puts "Không tìm thấy sách với id #{id}"
            puts "Danh sách book: #{$array} "
        else
            $array.delete_at(idx)
            puts " Id #{id} sách xóa thành công "
            puts "List sách còn sau khi xóa sách có id = #{id} là #{$array} "
        end

        # $array.find {|$array| $array[:id] == id}

        # $array.each do |n|
        #     if id1 == Book.to_hash(:id)
        #         puts id1]
        #     else
        #         puts "khong ton tai"
        #     end
        # end
        
        # puts Book.to_hash

        # $array.each_with_index {
        #     |value, index|
        # if ((value["id"].to_i.include? id) )
        #     $search_result_array.push(index)
        #     puts "[#{$search_result_array.length}]"  #\t\t{value["id"]}\t\t#{value["title"]}\t\t#{value["author"]}\t\t#{value["checkout"]}"
        # end
        # }


        # $array.collect do |n|
        #     puts id==
        # end
        
        # puts "#{id}"
        
        
        # to_hash.delete(:id)
        # puts " Số sách hiện có là  #@@count"

        gets.chomp
        main        
    end

    def self.find_book

        puts "Insert Id you want find"
        ids = gets.chomp.to_i
        idx = $array.find_index { |array| array[:id] == ids }
        if idx.nil?
            puts "Không tìm thấy sách với id #{ids}"
        else
            puts "Sách bạn muốn tìm có id = #{ids} : #{$array[idx]}"
        end
            # require '$array'
        
        # puts $array
        # $array.map do |n|
        #     # if id == $array[n][:id]
        #     #     puts id
        #     # else
        #     #     puts "khong ton tai"
        #     # end
        #     puts $array[n][:id]
        # end.join
        gets.chomp
        main 

    end
    
    def self.borrow_book 
        
        puts "Nhập id sách bạn muốn mượn"
        id = gets.chomp.to_i
        idx = $array.find_index { |array| array[:id] == id }
        if idx.nil? 
            puts "Sách bạn muốn mượn không có"
        else
            puts""
        end

        gets.chomp
        main
    end
end

# def find_book($array, id)
#     new_array = Book.new(1, 2, 3, 4)
#     $array.push(new_array.to_hash)
#         puts "Insert Id you want find"
#         id = gets.chomp.to_i
#         $array.find {|$array| $array[:id] == id}
#     end

#     a.find_book($array, 1)
#     if a
#         puts "tontai"
#     else 
#         puts "k tontai"
#     end

def main
    puts "Chọn chức năng"
    puts "[1] Hiển thị danh sách book"
    puts "[2] Add book"
    puts "[3] Xóa book"
    puts "[4] Tìm kiếm book"
    puts "[5] Mượn book"
    puts "[0] Thoát"

    case gets.chomp.to_i
        when 1 
            Library.show_book
        when 2 
            Library.add_book
        when 3 
            Library.delete_book
        when 4
            Library.find_book
        when 5
            Library.borrow_book
        when 0
            exit
    end

endS

main