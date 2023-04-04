
#This code puts all the students into an array

 def input_students
     puts "Please enter the names of the students, 
followed by a hobby they enjoy doing"
     puts "To finish, just hit return twice"

     students = []

     name = gets.chomp
     hobbies = gets.chomp
     while !name.empty? do
         students << {name: name, cohort: :november, hobbies: hobbies, }
         puts "Now we have #{students.count} students"

        name = gets.chomp
        hobbies = gets.chomp
    end

    students

end



 def print_header
 puts "The students of Villains Academy"
 puts "-------------"
end

def print(students)
  index = 1
  while index <= students.length
    student = students[index - 1]
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort). This student enjoys #{student[:hobbies]}"
    index += 1
  end
end
    
 
def print_footer(students)
puts "Overall we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)