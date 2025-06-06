class ToDo < ApplicationRecord
  has_many :to_do_features, dependent: :destroy
end
