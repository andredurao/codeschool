class Tweet < ActiveRecord::Base
  after_destroy :log_destroy
  after_update :log_update


  def log_update
    logger.info "Tweet #{id} updated"
  end

  def log_destroy
    logger.info "Tweet #{id} deleted"
  end
end
