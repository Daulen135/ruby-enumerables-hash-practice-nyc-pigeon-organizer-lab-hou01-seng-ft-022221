require "pry"

#def nyc_pigeon_organizer(data)
  # write your code here!
   #final_results =data.each_with_object ({}) do |(key, value),final_array|

 #value.each do |inner_key,names|
 #names.each do|name|
    #if !final_array[name]
     # final_array={}
      
#end
#if!final_array[name][key]
 #! final_array[name][key]={}
#end
#final_array[name][key].push(inner_key.to_s)
#end   
#end
#end

#Option2
# def nyc_pigeon_organizer(data)
  # pigeon_list = {}
  # data.each do |color_gender_lives, value|
   # value.each do |stats, all_names|
      # all_names.each do |name|
       #  if pigeon_list[name] == nil
       #   pigeon_list[name] = {}
       # end
       # if pigeon_list[name][color_gender_lives] == nil
        #  pigeon_list[name][color_gender_lives] = []
      #  end
       # pigeon_list[name][color_gender_lives].push(stats.to_s)
      ##end 
 ## pigeon_list
#end


def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value| #key:color,gender,lives #value:hash
  value.each do |describe, array| #describe:purple, male, subway
  array.each do |name| #name:index inside array

  #check if the empty hash has name inside 
  if pigeon_list.has_key?(name)

  #check if the value of name key has key(color,gender,lives)
   if pigeon_list[name].has_key?(key)

  #if name has key already, add the describe value at the current iteration
  pigeon_list[name][key] << describe.to_s

  #if name has no key at the current iteration yet, set the new hash
  else
    pigeon_list[name][key] = [describe.to_s]
  end

  #set name level 1-> key level 2 with describe as value of the hash
else
  pigeon_list[name] = {key => [describe.to_s]} #describe was symbol before so turn it to String
      end
     end
    end
  end
  pigeon_list
end


