class TimeFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A(\d+h\s)?(\d+m)?\Z/
      record.errors.add(attribute, (options[:message] || "Must have the format 'Xh Ym', where X - hours count, Y - minutes count"))
    end
  end
end