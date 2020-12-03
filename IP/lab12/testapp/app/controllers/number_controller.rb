class NumberController < ApplicationController
  def view
    @result = History.create_with_output(params[:arr]).output
    if @result =~ /\d/
      @result = JSON.parse(@result)
    end
    respond_to do |format|
      format.html
      format.json do
        render json:
          {type: @result.class.to_s, value: @result }
      end
    end
  end
end
