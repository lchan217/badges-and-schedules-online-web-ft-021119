require "pry"
def badge_maker(name)
  "Hello, my name is #{name}."
end 

def batch_badge_creator(names)
  names.map do |person|
    "Hello, my name is #{person}."
  end 
end 

def assign_rooms(speakers)
  new = [] 
  speakers.each_with_index do |speaker,i|
    new << "Hello, #{speaker}! You'll be assigned to room #{i+1}!"
  end 
  new 
end 

def printer(speaker)
  batch_badge_creator(speaker).each do |person|
    puts person 
    binding.pry
  end 
  assign_rooms(speaker).each do |person|
    puts person 
  end 
end 