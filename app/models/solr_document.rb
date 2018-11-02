# frozen_string_literal: true

class SolrDocument
  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument

  # Adds Hyrax behaviors to the SolrDocument.
  include Hyrax::SolrDocumentBehavior

  # self.unique_key = 'id'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension(Blacklight::Document::Email)

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension(Blacklight::Document::Sms)

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension(Blacklight::Document::DublinCore)

  # Do content negotiation for AF models.
  use_extension(Hydra::ContentNegotiation)

  attribute :extent, Solr::Array, solr_name('extent')
  attribute :rendering_ids, Solr::Array, solr_name('hasFormat', :symbol)

  def alternative
    self[Solrizer.solr_name('alternative')]
  end

  def date
    self[Solrizer.solr_name('date')]
  end

  def extent
    self[Solrizer.solr_name('extent')]
  end

  def format
    self[Solrizer.solr_name('format')]
  end

  def genre
    self[Solrizer.solr_name('genre')]
  end

  def place
    self[Solrizer.solr_name('place')]
  end

  def series_title
    self[Solrizer.solr_name('series_title')]
  end

  def time_period
    self[Solrizer.solr_name('alternative')]
  end

  def resource_access_rights
    self[Solrizer.solr_name('resource_access_rights')]
  end

  def aspaceurl
    self[Solrizer.solr_name('aspaceurl')]
  end

  def donor
    self[Solrizer.solr_name('donor')]
  end
  
  def note
    self[Solrizer.solr_name('note')]
  end
  
end
