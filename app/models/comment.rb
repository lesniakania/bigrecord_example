class Comment < BigRecord::Base
  include BigIndex::Resource
  
  column :username, :string
  column :content, :text
  column :post_id, :string
  
  index :username
  index :content
  index :post_id

  validates_presence_of :username, :content
  
  def post
    post_id.blank? ? nil : Post.find(post_id)
  end

  def post=(post)
    self.post = post
  end
end

