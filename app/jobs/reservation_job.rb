class ReservationJob < ApplicationJob
  queue_as :default

  # def perform(A,B,C)
  #    ReservationMailer.booking_email(A,B,C).
  # end
end
