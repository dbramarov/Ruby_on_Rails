def new_user user = {first_name: "first", last_name: "last"}
  puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
end
our_user = {first_name: 'Dorian', last_name: "Bramarov"}
new_user(our_user)

def new_user first_name: "first", last_name: "last"
  puts "Welcome to our site, #{first_name} #{last_name}!"
end

new_user(first_name: "Dorian", last_name: "Bramarov")