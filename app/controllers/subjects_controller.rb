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

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to(:action => 'show', :id => @subject.id)
    else
      render('edit')
    end    
  end

  def delete
  end

  # private methods cannot be called as actions...
  private 
    def subject_params
      # same as calling "params[:subject]", except that it:
      # - raises an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:subject).permit(:name, :position, :visible)
    end
end
