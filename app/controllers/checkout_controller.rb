class CheckoutController < ApplicationController
    def create
      @total = params[:total].to_d
      @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [
          {
            price_data: {
              currency: 'eur',
              unit_amount: (@total*100).to_i,
              product_data: {
                name: 'Rails Stripe Checkout',
              },
            },
            quantity: 1
          },
        ],
        mode: 'payment',
        success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
        cancel_url: checkout_cancel_url
      )
      redirect_to @session.url, allow_other_host: true
    end
  
    def success
      Meeting.where(driver_id: current_user.id).last.update(meeting_status: 1)
      @session = Stripe::Checkout::Session.retrieve(params[:session_id])
      @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    end
  
    def cancel
      @meeting = Meeting.where(driver_id: current_user.id).last
      if @meeting.meeting_type == "first_contact" || @meeting.meeting_type == "debrief"
        Availability.find(@meeting.availability_id).update(is_available: true)
      elsif @meeting.meeting_type == "coaching"
        Availability.find(@meeting.availability_id).update(is_available: true)
        Availability.find(@meeting.availability_id + 1).update(is_available: true)
      end
      Meeting.where(driver_id: current_user.id).last.destroy
    end
end