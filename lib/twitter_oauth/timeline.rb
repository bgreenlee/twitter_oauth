module TwitterOAuth
  class Client
    
    # Returns the 20 most recent statuses from non-protected users who have set a custom user icon.
    def public_timeline(options={})
      get("/statuses/public_timeline", options)
    end
    
    # Returns the 20 most recent statuses, including retweets, posted by the authenticating user and that user's friends. 
    # This is the equivalent of /timeline/home on the Web.
    def home_timeline(options={})
      get("/statuses/home_timeline", options)
    end
    
    # Returns the 20 most recent statuses posted by the authenticating user and that user's friends.
    def friends_timeline(options={})
      get("/statuses/friends_timeline", options)
    end
    
    # Returns the 20 most recent statuses posted from the authenticating user.
    def user_timeline(options={})
      get("/statuses/user_timeline", options)
    end
    alias :user :user_timeline
    
    # Returns the 20 most recent @replies (status updates prefixed with @username) for the authenticating user.
    def mentions(options={})
      get("/statuses/mentions", options)
    end
    alias :replies :mentions
    
    # Returns the 20 most recent retweets posted by the authenticating user
    def retweeted_by_me(options={})
      get("/statuses/retweeted_by_me", options)
    end
    
    # Returns the 20 most recent retweets posted by the authenticating user's friends.
    def retweeted_to_me(options={})
      get("/statuses/retweeted_to_me", options)
    end
    
    # Returns the 20 most recent tweets of the authenticated user that have been retweeted by others.
    def retweets_of_me(options={})
      get("/statuses/retweets_of_me", options)
    end
    
  end
end
