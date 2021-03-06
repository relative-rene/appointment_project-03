class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
    render :new
  end

  def create
    @subscription = Subscriptions.create(params[:subscription])
    if @subscription.save_with_payment
        redirect_to @subscription, notice: 'Thank you for your order!'
    else
        render :new
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end
end
