module Hyku
  class FileSetPresenter < Hyrax::FileSetPresenter
    include DisplaysImage
    # CurationConcern methods
    delegate :rendering_ids, :creator, :keyword, :rights_statement,
             :contributor, :description, :license, :publisher, :date_created,
             :subject, :language, :identifier, :based_near, :related_url,
             :source, :resource_type, :title, :depositor, :date_uploaded,
             :date_modified, :transcript,
             to: :solr_document
  end
end
