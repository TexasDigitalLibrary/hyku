# Generated via
#  `rails generate hyrax:work Bcdam`
module Hyrax
  # Generated form for Bcdam
  class BcdamForm < Hyrax::Forms::WorkForm
    self.model_class = ::Bcdam
    self.terms += %i[
      :resource_type,
      :alternative,
      :date,
      :extent,
      :format,
      :genre,
      :place,
      :series_title,
      :time_period,
      :resource_access_rights,
      :aspaceurl,
      :donor,
      :note,
      :preservation_location
    ]
    self.required_fields += [:resource_access_rights]

    # Remove terms
    self.terms -= [:keyword, :source, :based_near, :license, :date_created]
    self.required_fields -= [:keyword, :creator]

    def secondary_terms
      super - [:rendering_ids]
    end
  end
end
