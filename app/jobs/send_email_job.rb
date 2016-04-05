class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(modulo)
    @modulo = modulo
    Modulonotifier.invio(@modulo).deliver_later
    # Do something later
  end
end
