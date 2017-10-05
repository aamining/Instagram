require 'image_processing/mini_magick'

class ImageUploader < Shrine
  require 'shrine'
  require 'shrine/storage/file_system'

 Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'), # temporary
  store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/store'), # permanent
}

Shrine.plugin :activerecord # or :activerecord
Shrine.plugin :cached_attachment_data # for forms

end
