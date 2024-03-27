module Marcasite
  class Article < ApplicationRecord
    has_many :comments
    extend FriendlyId
    friendly_id :title, use: :slugged
  end
end
