class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :load_brands

  protected

    def load_brands
      @brands = Refinery::Brands::Brand.all
    end
end
