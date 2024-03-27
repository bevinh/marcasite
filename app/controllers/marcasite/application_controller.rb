module Marcasite
  class ApplicationController < ActionController::Base
    $theme = Theme.all.first
  end
end
