class Market3 < ApplicationRecord
    require 'carrierwave/orm/activerecord'
    mount_uploader :avatar, AvatarUploader
end
