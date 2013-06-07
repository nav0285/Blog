class Micropost < ActiveRecord::Base
   attr_accessible :content

   belongs_to :user, counter_cache: true

   validates_presence_of [:content, :user_id]

   validates :content, length: { maximum: 140 }

   default_scope order: 'microposts.created_at DESC'

end
