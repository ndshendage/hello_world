class Student < ActiveRecord::Base
	mount_uploader :resume, ResumeUploader # Tells rails to use this uploader for this model.
  mount_uploader :video, VideoUploader
  #validates :name, presence: true # Make sure the owner's name is present.
end
