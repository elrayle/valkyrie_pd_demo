# frozen_string_literal: true
class PageChangeSet < Valkyrie::ChangeSet
  property :page_num, multiple: false, required: true
  property :structure, multiple: false, required: false
  property :image, multiple: false, required: false
end
