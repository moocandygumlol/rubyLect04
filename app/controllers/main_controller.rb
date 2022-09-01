class MainController < ApplicationController
  skip_before_action :verify_authenticity_token

  def test
  end

  def home
  end

  def home_post
    @x1 = params[:sub1]
    @x2 = params[:sub2]
    @x3 = params[:sub3]
    @y1 = params[:grd1].to_f
    @y2 = params[:grd2].to_f
    @y3 = params[:grd3].to_f

    @all = @y1 + @y2 + @y3
    m = [@y1, @y2, @y3].max
    @ans = (m == @y1)? @x1:(m == @y2)? @x2: @x3
  end
end
