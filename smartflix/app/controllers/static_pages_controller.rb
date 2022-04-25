class StaticPagesController < ApplicationController
  def index
    render html: "smartfix"
  end
end
