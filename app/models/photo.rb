class Photo < ApplicationRecord
	belongs: user
	belongs: place
	mount_uploader :photo, PictureUploader
end	