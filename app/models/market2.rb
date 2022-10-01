class Market2 < ApplicationRecord
    require 'carrierwave/orm/activerecord'
    mount_uploader :avatar, AvatarUploader
end
