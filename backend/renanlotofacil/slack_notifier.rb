class SlackNotifier
    # constructor
    # use as: SlackNotifier.new "YOUR-URL"
    def initialize(webhook_url)
      @webhook_url = webhook_url
    end
  
    # sends a notification
    # returns true after a successfull pust
    def send(payload)
      # send as json
      headers = { 'Content-Type': 'application/json' }

      # rescue from request errors
      begin
        # make request
        r = HTTParty.post(@webhook_url, body: payload, headers: headers )
        return (r.code == 200)
      rescue
        return false
      end
    end
  end
  