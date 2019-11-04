class ForwardsMailbox < ApplicationMailbox
	before_processing :require_forward
  def process
  end
end
