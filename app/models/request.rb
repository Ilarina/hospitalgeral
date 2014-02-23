class Request < ActiveRecord::Base
  belongs_to :exame
  belongs_to :consultation
end
