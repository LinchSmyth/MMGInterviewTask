class PagesController < ApplicationController
  def home
  end

  def about
  end

  def create
    Feedback.create(params[:person])
    raise "Foo"
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :age, :datetime, :message)
  end
end
