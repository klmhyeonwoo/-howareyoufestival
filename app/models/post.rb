class Post < ApplicationRecord
    require 'carrierwave/orm/activerecord'
    mount_uploader :avatar, AvatarUploader
end
