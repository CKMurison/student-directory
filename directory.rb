
@students = [] # an empty array accessible to all methods
@filename = "students.csv"

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to a file"
  puts "4. Load the list from a file"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    input_students
    puts "Input success!"
  when "2"
    show_students
  when "3"
    save_students
    puts "Students saved!"
  when "4"
    load_students
    puts "Students loaded!"
   when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
end

def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  puts "Enter filename to save:"
  filename = gets.chomp
  if filename.length == 0 
    puts "Please enter a name with at least 1 character"
  else
  File.open(filename, "w") do |file|
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
  end
  # Update the @filename instance variable to the user's chosen filename
  @filename = filename
end
end

def load_students
  puts "Enter filename to load:"
  filename = gets.chomp
  File.open(filename, "r") do |file|
    file.readlines.each do |line|
      name, cohort = line.chomp.split(',')
      @students << {name: name, cohort: cohort.to_sym}
    end
  end
  # Update the @filename instance variable to the user's chosen filename
  @filename = filename
end


def try_load_students
  filename = ARGV.first || 'students.csv'
  if File.exists?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

try_load_students
interactive_menu
 