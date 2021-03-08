require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

    holiday_supplies[:summer][:fourth_of_july][1]

 

end 

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |season, value|
  value.each do |holidays, supplies|
  supplies << supply
end
end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, value|
    value.each do |holidays, supplies|
      supplies << supply 
     
    end
  end
holiday_hash
end
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash.each do |season, value|
    new_array << value.values
  end
  new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do | hash, seasons |
    puts "Winter:" if hash == :winter
    puts "Summer:" if hash == :summer
    puts "Fall:" if hash == :fall
    puts "Spring:" if hash == :spring
    
    seasons.each do | season, holiday|
      puts "  Christmas: #{holiday.join(", ")}" if season == :christmas
      puts "  New Years: #{holiday.join(", ")}" if season == :new_years
      puts "  Fourth Of July: #{holiday.join(", ")}" if season == :fourth_of_july
      puts "  Thanksgiving: #{holiday.join(", ")}" if season == :thanksgiving
      puts "  Memorial Day: #{holiday.join(", ")}" if season == :memorial_day 

  end

end

end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
new_array = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      supplies.each {|h| new_array << holiday if h.eql?("BBQ")}
    end
  end
  new_array
end









