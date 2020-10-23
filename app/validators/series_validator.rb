# frozen_string_literal: true
class SeriesValidator < ActiveModel::Validator
  # ensure the property exists and is in the controlled vocabulary
  def validate(record)
    valid = ['Joe Pike', 'Elvis Cole', 'Elvis Cole/Joe Pike'].include? record.series
    return true if valid
    record.errors.add :series, "#{record.series} is not a valid series"
  end
end
