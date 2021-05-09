# frozen_string_literal: true

class HomesController < ApplicationController
  def index
    @users = User.all.page(params[:page])
  end
end
