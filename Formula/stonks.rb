require 'formula'

  
class Stonks < Formula
    homepage 'https://github.com/ericm/stonks'

    url 'https://github.com/ericm/stonks.git', :using => :git, :tag => "v1.0.9"

    stable do
        url 'https://github.com/ericm/stonks.git', :using => :git, :tag => "v1.0.9"
        version "1.0.10"
    end

    depends_on "golang"

    def install
        system "make"
        # Install!
        bin.install "stonks"
    end
end
