class Lesson < ActiveRecord::Base
	belongs_to :section
	mount_uploader :video, VideoUploader

	include RankedModel
	ranks :row_order, :with_same => :section_id


	# validates :video, :presence    => {:message => 'Please add a video'}
	# validates :title, :presence    => {:message => 'Please add a title' }
	# validates :subtitle, :presence => {:message => 'Pleae add a subtitle'}
end
