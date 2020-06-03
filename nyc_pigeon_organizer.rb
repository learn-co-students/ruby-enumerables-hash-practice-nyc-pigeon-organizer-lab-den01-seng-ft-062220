def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |attributes, value|
    value.each do |info, names|
      names.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][attributes] == nil
          new_hash[name][attributes] = []
        end
        new_hash[name][attributes].push(info.to_s)
      end
    end
  end
  new_hash
end
