require 'formula'

  
class Stonks < Formula
    homepage 'https://github.com/ericm/stonks'

    url 'https://github.com/ericm/stonks.git', :using => :git, :tag => "v1.0.8"

    stable do
        url 'https://github.com/ericm/stonks.git', :using => :git, :tag => "v1.0.8"
        version "1.0.8"
    end

    depends_on "golang"

    def install
        system "make"
        # Install!
        bin.install "stonks"
    end
end
