# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick



  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    [thumb, "default.jpg"].compact.join('_')
  end

  # Process files as they are uploaded:

      def do_stuff
        manipulate! do |img|
          img = img.auto_orient
        end
      end

  # Create different versions of your uploaded files:
  version :thumb do
    process :do_stuff
    process :resize_to_fit => [50, 50]
  end

  version :large_avatar do
    # returns a 150x150 image
    process :resize_to_fill => [150, 150]
  end

  version :small_avatar do
    process :do_stuff
    process :resize_to_fill => [36, 36]
  end

  version :profile_avatar do
    process :do_stuff
    process :resize_to_fill => [204, 204]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
