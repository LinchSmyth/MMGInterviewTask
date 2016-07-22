class PagesController < ApplicationController
  def home
    @feedback = Feedback.new
  end

  def about
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      @datetime = feedback_params[:datetime]
      render 'thanks'
    else
      render 'home'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :age, :datetime, :message, :attachment)
  end
end

#TODO: client-side validation
