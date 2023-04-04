
#This code puts all the students into an array

 def input_students
     puts "Please enter the names of the students and their cohorts, 
followed by something they enjoy doing".center(40)
     puts "To finish, just hit return three times".center(30)

     students = []
     
     name = gets.chomp
     cohort = gets.chomp
     hobbies = gets.chomp
     while !name.empty? do
         cohort = "Mystery" if cohort.empty?
         students << {name: name, cohort: cohort, hobbies: hobbies}
         puts "Now we have #{students.count} students"

        name = gets.chomp
        cohort = gets.chomp
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