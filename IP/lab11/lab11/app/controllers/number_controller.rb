# frozen_string_literal: true

# class controller
class NumberController < ApplicationController
  def inpup; end

  def output
    @result = PerNum.create_with_output(params[:arr])
  end
end

