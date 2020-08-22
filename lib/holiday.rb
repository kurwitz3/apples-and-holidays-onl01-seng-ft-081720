require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
          holiday_hash.each do |season,holiday|
            if season == :winter
              holiday.each do |supplies,list|
               list << supply
   end
 end
 end
end
def add_supply_to_memorial_day(holiday_hash, supply)
      holiday_hash.each do |season,holiday|
        if season ==  :spring
        holiday.each do |day,list|
          list << supply
        end
        end
    end
 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
     return_list = []
     holiday_hash.each do |season,holiday|
     if season == :winter 
     holiday.each do |holidays,list|
       return_list << list
       
     end
     end
     end
  return_list.flatten
end

def all_supplies_in_holidays(holiday_hash)
 list = []
 holiday_hash.each do |season,holiday|
    puts  "#{season.capitalize}:"
    holiday.each do |key,value|
       puts "  #{key.to_s.split("_").collect{|list|list.capitalize}.join(" ")}: #{ value.join(", ")}"
  
  end
    end
   
end
 
 
 
 # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
   bbq_holidays = []
 holiday_hash.map do |season,holiday|
holiday.map do |holidays,list|

   if list.include?("BBQ")
   bbq_holidays << holidays

end
 end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end

 





