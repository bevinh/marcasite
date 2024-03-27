module Marcasite
  class Comment < ApplicationRecord
    belongs_to :article
  end
end
