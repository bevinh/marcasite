module Marcasite
  class ApplicationController < ActionController::Base
    $theme = Theme.all.first rescue nil
  end
end
