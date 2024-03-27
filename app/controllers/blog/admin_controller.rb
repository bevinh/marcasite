module Blog
  class AdminController < ApplicationController
    def index
      @panel = view_context.render(partial: 'general')
    end
    def general
      @panel = view_context.render(partial: 'general')
      render 'index'
    end
    def posts
      @panel = view_context.render(partial: 'posts')
      render 'index'
    end
  end
end