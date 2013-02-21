class Post < ActiveRecord::Base
  attr_accessible :name, :position,:pic
  has_attached_file :pic,
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename",
                    :styles => {:index => "100x100"}
end
