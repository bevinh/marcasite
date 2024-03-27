module Marcasite
  class AdminController < ApplicationController
    layout 'marcasite/admin'
    def index
      @panel = view_context.render(partial: 'general')
    end
    def general
      @panel = view_context.render(partial: 'general')
      render 'index'
    end
    def posts
      @articles = Article.all
      @panel = view_context.render(partial: 'posts')
      render 'index'
    end
    def pages
      @pages = Page.all
      @panel = view_context.render(partial: 'pages')
      render 'index'
    end
    def analytics
      @panel = view_context.render(partial: 'analytics')
      render 'index'
    end
    def plugins
      @panel = view_context.render(partial: 'plugins')
      render 'index'
    end
    def themes
      @themes = Theme.all
      @panel = view_context.render(partial: 'themes')
      render 'index'
    end
  end
end