class Gun < ActiveRecord::Base
  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  self.table_name = "guns" 

  # :storage => :sql,
  # :sql_options => { :table => Upload }

end
