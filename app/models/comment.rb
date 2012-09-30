class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  # allow for mass assignment
  attr_accessible :author_name, :body
  belongs_to :article
end
