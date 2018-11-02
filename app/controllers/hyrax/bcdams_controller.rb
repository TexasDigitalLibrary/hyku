# Generated via
#  `rails generate hyrax:work Bcdam`
module Hyrax
  # Generated controller for Bcdam
  class BcdamsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Bcdam

    include Hyku::IIIFManifest
  end
end
