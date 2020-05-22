require 'formula'

  
class Stonks < Formula
    homepage 'https://github.com/ericm/stonks'

    url 'https://github.com/ericm/stonks.git', :using => :git, :tag => "v1.0.3"

    stable do
        url 'https://github.com/ericm/stonks.git', :using => :git, :tag => "v1.0.3"
        version "1.0.3"
    end

    depends_on "golang"

    def install
        system "make"
        # Install!
        build_opts << "install"
        system "make", *build_opts
    end
end
