
#This code puts all the students into an array

 def input_students
     puts "Please enter the names of the students"
     puts "To finish, just hit return twice"
     
     students = []
     
     name = gets.chomp
     while !name.empty? do
         if name.length < 12
         students << {name: name, cohort: :november}
         puts "Now we have #{students.count} students"
        else
            puts "Enter a name with less than 12 characters!"
        end
        name = gets.chomp
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
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
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