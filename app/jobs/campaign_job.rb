class CampaignJob < ApplicationJob
  queue_as :emails

  def perform(client, title, body)
    # Do something later
    MarketingMailer.campaign(client, title, body).deliver_now
  end
end
