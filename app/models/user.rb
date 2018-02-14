class User < ActiveRecord::Base
  def active?
    entity_status == 'ACTIVE'
  end
end
