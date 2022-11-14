class Plan < ApplicationRecord
    require 'carrierwave/orm/activerecord'
    mount_uploader :avatar, AvatarUploader
end
