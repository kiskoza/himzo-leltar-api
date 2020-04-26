ActiveSupport.use_standard_json_time_format = false

class DateTime
  def as_json(options = nil) #:nodoc:
    if ActiveSupport.use_standard_json_time_format
      strftime('%FT%T.%3NZ')
    else
      strftime('%Y-%m-%d %H:%M:%S')
    end
  end
end

class ActiveSupport::TimeWithZone
  def as_json(options = {})
    strftime('%Y-%m-%d %H:%M:%S')
  end
end
