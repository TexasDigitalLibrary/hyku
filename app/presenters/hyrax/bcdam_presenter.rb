# Generated via
#  `rails generate hyrax:work Bcdam`
module Hyrax
  class BcdamPresenter < Hyrax::WorkShowPresenter
    delegate :alternative, :date, :extent, :format, :genre,
             :place, :series_title, :time_period, :resource_access_rights,
             :aspaceurl, :donor, :note, :preservation_location,
             to: :solr_document
  end
end
