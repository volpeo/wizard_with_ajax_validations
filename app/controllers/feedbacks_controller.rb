class FeedbacksController < ApplicationController

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        format.js
      else
        format.js
      end
    end
  end

  def update
    @feedback = Feedback.find(params[:id])
    @feedback.step = feedback_params[:step].to_i

    @feedback.update(feedback_params)
    respond_to do |format|
      format.js
    end
  end

  private

  def feedback_params
    # added :step here to know what validation we should do
    params.require(:feedback).permit(:step, :name, :rating, :content)
  end
end