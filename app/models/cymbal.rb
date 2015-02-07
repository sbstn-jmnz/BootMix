class Cymbal < ActiveRecord::Base
	acts_as_list
	scope :sorted, -> {order('position ASC')}
end
