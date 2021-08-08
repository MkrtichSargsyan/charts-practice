class Covid < ApplicationRecord

  def self.resetID
    # ActiveRecord::Base.connection.reset_pk_sequence!('Covids')
    # ActiveRecord::Base.connection.execute("TRUNCATE covids")
  end

end
