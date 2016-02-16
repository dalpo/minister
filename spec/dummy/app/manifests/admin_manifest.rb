class AdminManifest < Minister::Manifest
  def self.resources
    %i(posts)
  end
end
