#def nyc_pigeon_organizer(data)
 # pigeon_list = {}
  
 # data.each do |key1, value|
  #  value.each do |key2, array| 
   #   array.each do |element|
   #     pigeon_list[element] = {}
    #   #pigeon_list[element].merge(key1)  
    #  end
   # end
 # end
 #puts pigeon_list
 # pigeon_list
#end

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  pigeon_list
end
