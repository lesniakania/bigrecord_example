class Post < BigRecord::Base
  include BigIndex::Resource
  
  column :username, :string
  column :title, :string
  column :content, :text

  index :username
  index :title
  index :content

  validates_presence_of :username, :title

  def comments
    Comment.find(:all, :conditions => { :post_id => id })
  end

  def add_comment(comment)
    comment.post = self
  end
end
