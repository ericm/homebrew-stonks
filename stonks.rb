require 'formula'

class GitNoDepthDownloadStrategy < GitDownloadStrategy
    # We need the .git folder for it's information, so we clone the whole thing
    def stage
        dst = Dir.getwd
        @clone.cd do
            reset
            safe_system 'git', 'clone', '.', dst
        end
    end
end
  
class Stonks < Formula
    homepage 'https://github.com/ericm/stonks'

    stable do
        url 'https://github.com/ericm/stonks.git',
          :using => GitNoDepthDownloadStrategy, :shallow => false, :tag => "v1.0.2"
        version "1.0.2"
    end

    depends_on "golang"

    def install
        system "make"
        # Install!
        build_opts << "install"
        system "make", *build_opts
    end
end
