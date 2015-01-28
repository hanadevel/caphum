class Unit < ActiveRecord::Base
	default_scope -> {order(:name)}
end
