class HelloController < ApplicationController
  layout 'another'

  def greeting
    @name = params[:name] || 'Миша'
    @towns = [['Уфа', 1], ['Салават', 2]]
    # @competences = [{ name: 'Rails', author: 'Hansson' }, { name: 'Ruby', author: 'Mazumoto' }]
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @competences.to_json }
    # end
  end


  def bye
  end
end
