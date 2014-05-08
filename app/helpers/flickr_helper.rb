module FlickrHelper
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'flickraw'

FlickRaw.api_key="3e87ddb27992bc6e678135e97bc26082"
FlickRaw.shared_secret="04dc40cb7dd931b6"

def flickrrelevantone(searchterm)
	search = flickr.photos.getRecent :tag => searchterm, :sort => "relevance", :per_page => 5
	photo = flickr.photos.getInfo(:photo_id => search[0].id)
	FlickRaw.url(photo)
end

def getfivepicsfromsearch(searchterm)
	results = flickr.photos.search :text => searchterm, :sort => "relevance", :per_page => 5
end

def flickrfive(searchterm)
	search = flickr.photos.getRecent :tag => searchterm, :sort => "relevance", :per_page => 5
end

end