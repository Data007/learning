class Product

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description
  field :image_url

  field :price, type: Float

  belongs_to :order

	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: { 
		with:		%r{\.(gif|jpg|png)$}i,
		message: 'must be a url for a gif, jpg, or png image.'
	}
end
