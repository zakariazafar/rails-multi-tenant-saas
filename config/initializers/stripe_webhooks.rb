StripeEvent.configure do |events|
  # subscription failed/deleted
  events.subscribe 'customer.subscription.deleted' do |event|
  	ap 'customer.subscription.deleted'
  	ap event

  	# Delete the customers subscription from account model
  	subscription = event.data.object
  	customer_id = subscription.customer
  	
  	# Move to account model
  	account = Account.find_by_customer_id(customer_id)
  	account.stripe_plan_id = ''
  	#account.customer is unchanged
  	account.active_until = Time.at(0).to_datetime
  	account.save!
  end

  # charge succeeded for subscription
  events.subscribe 'customer.subscription.updated' do |event|
  	ap 'customer.subscription.updated'
  	ap event

  	# Called for any change on the subscription object
  	subscription = event.data.object
  	customer_id = subscription.customer
  	account = Account.find_by_customer_id(customer_id)
  	account.stripe_plan_id = subscription.plan.id
  	#account.customer is unchanged
  	account.active_until = Time.at(subscription.current_period_end).to_datetime
  	account.save!

  end

#   # charge failed for subscription
#   events.subscribe 'charge.failed' do |event|
#     # Define subscriber behavior based on the event object
#     event.class       #=> Stripe::Event
#     event.type        #=> "charge.failed"
#     event.data.object #=> #<Stripe::Charge:0x3fcb34c115f8>
#   end

#   events.all do |event|
#     # Handle all event types - logging, etc.
#   end
end