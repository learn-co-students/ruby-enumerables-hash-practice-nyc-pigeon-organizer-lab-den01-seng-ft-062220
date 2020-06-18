def nyc_pigeon_organizer(data)
  hash = {}
  final_results = data.each_with_object(hash) do |(key, value), final_array|
    puts(value, final_array)
    value.each do |inner_key, names|
      #puts(inner_key, names)
      names.each do | name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          final_array[name][key] = []
        end
        final_array[name][key].push(inner_key.to_s)
      end
    end 
  end
  return hash
end