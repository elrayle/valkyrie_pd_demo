# frozen_string_literal: true
require 'validators/series_validator'

class BookChangeSet < Valkyrie::ChangeSet
  property :title, multiple: true, required: true
  property :author, multiple: true, required: true
  property :series, multiple: false, required: false
  property :member_ids, multiple: true, required: false

  validates :title, :author, presence: true # standard presence validator
  validates_with ::SeriesValidator          # custom validator defined below in the SeriesValidator class
end
