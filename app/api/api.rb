class API
  def self.time(&callback)
    AFMotion::HTTP.get("http://www.timeapi.org/utc/now") do |response|
      if response.success?
        callback.call response.object
      else
        mp response
      end
    end
  end
end

# API.time do |current_time|
# end
