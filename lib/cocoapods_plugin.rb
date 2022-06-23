require 'cocoapods-hmap-privite/hmap_writer'
require 'cocoapods-hmap-privite/pod_context_hook'

module CocoapodsHmapPrivite
  Pod::HooksManager.register('cocoapods-hmap-privite', :post_install) do |context|
    HMap::HMapFileWriter.new(context)
  end
  Pod::HooksManager.register('cocoapods-hmap-privite', :post_update) do |context|
    HMap::HMapFileWriter.new(context)
  end
end