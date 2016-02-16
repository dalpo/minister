module Minister
  # Amministra default Responder class
  class Responder < ActionController::Responder
    include Responders::FlashResponder
    include Responders::HttpCacheResponder

    # Redirects resources to the collection path (index action) instead
    # of the resource path (show action) for POST/PUT/DELETE requests.
    # include Responders::CollectionResponder
  end
end
