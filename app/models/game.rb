class Game < ActiveRecord::Base
  attr_accessible :champion_id, :gold_earned, :ip_earned, :largest_killing_spree, :queue_type, :spell_one, :spell_two
end
