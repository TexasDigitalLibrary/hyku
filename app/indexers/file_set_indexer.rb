class FileSetIndexer < Hyrax::FileSetIndexer
  # This indexes the default metadata. You can remove it if you want to
  # provide your own metadata and indexing.
  include Hyrax::IndexesBasicMetadata

  self.thumbnail_path_service = IIIFWorkThumbnailPathService
  def generate_solr_document
    super.tap do |solr_doc|
      solr_doc['hasFormat_ssim'] = object.rendering_ids
    end
  end
end
