module EntryDecorator
    def time_localized
      hours = time.scan(/\d+h/).first.to_i
      minutes = time.scan(/\d+m/).first.to_i

      hours_str = t('hour', count: hours.to_i, locale: :ru)
      minutes_str = t('minute', count: minutes.to_i, locale: :ru)

      "#{hours} #{hours_str} #{minutes} #{minutes_str}"
    end
end