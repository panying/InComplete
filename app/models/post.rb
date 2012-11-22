class Post < ActiveRecord::Base
  attr_accessible :text, :title, :posteremail, :name, :picture
    validates :title, presence: true, length: { minimum: 5 }
	validates :picture, presence: true
  has_many :comments, dependent: :destroy
  has_attached_file :picture,
      :styles => {:thumb=> "150x150#",:small  => "200x200>", :large => "400x400>" }
  #validates_attachment_presence :picture
  #validates_attachment_presence :picture, :less_than => 5.megabytes
  validates_attachment_presence :picture, :content_type => ['image/jpeg', 'image/png']
end
