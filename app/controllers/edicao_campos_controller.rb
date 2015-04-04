# -*- encoding : utf-8 -*-
class EdicaoCamposController < ApplicationController
  before_action :set_bandeira, only: [:show, :edit, :update, :destroy]

  def index
  end

end
