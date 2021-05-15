class Buyer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :region
  belongs_to :user
end
