class SubjectsController < ApplicationController
  
  layout false # do not attempt to render a layout

  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def edit
  end

  def delete
  end
end
