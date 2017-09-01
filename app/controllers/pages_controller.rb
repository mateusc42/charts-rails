class PagesController < ApplicationController
  def index
  end

  def dash1
    @visits = Visit.all
  end

  def dash2
  end

  def dash3
  end

end
