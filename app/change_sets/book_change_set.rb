# frozen_string_literal: true
class BookChangeSet < Valkyrie::ChangeSet
  property :title, multiple: true, required: true
  property :author, multiple: true, required: true
  property :series, multiple: false, required: false
  property :member_ids, multiple: true, required: false
end
