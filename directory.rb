
#This code puts all the students into an array

 def input_students
  puts "Please enter the names of the students and their cohorts, followed by something they enjoy".center(40)
  puts "To finish, just hit return three times".center(30)

  students = [
  {name: "Sammy", cohort: "March", hobbies: "Soup"}, 
  {name: "David", cohort: "March", hobbies: "Bread"}, 
  {name: "Wilson", cohort: "March", hobbies: "Cheese"}, 
  {name: "Amira", cohort: "March", hobbies: "Books"}
]

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
    puts "what month do you want to view?"
    input = gets.chomp
    if input == "March"
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort). This student enjoys #{student[:hobbies]}"
    else puts "please select a valid month. Currently March"
    end
    index += 1
  end
end
    
 
def print_footer(students)
if students.length == 1
  puts "Overall we have #{students.count} great student"
elsif students.length == 0 
  puts "*the halls are empty*"
else
  puts "Overall we have #{students.count} great students"
end
end

students = input_students
print_header
print(students)
print_footer(students)





def print(students)
  index = 1
  while index <= students.length
    student = students[index - 1]
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort). This student enjoys #{student[:hobbies]}"
    index += 1
  end
end