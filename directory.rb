
#This code puts all the students into an array

 def input_students
  puts "Please enter the names of the students and their cohorts, followed by something they enjoy".center(40)
  puts "To finish, just hit return three times".center(30)

  students = []

  valid_months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


    if students.empty?
        puts "There are no students currently in attendence"
    end

  name = gets.chomp
  cohort = gets.chomp.capitalize
  hobbies = gets.chomp

  while !name.empty? do
    if !valid_months.include?(cohort)
      puts "Invalid month. Please enter a valid month:"
      cohort = gets.chomp.capitalize
    end
    
    students << {name: name, cohort: cohort, hobbies: hobbies}
    
  if students.length == 1 
    puts "Now we have #{students.count} student"
  else 
    puts "Now we have #{students.count} students"
  end
  
    name = gets.chomp
    cohort = gets.chomp.capitalize
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