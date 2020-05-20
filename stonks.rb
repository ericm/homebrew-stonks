require 'formula'

class Stonks < Formula
    homepage 'https://github.com/ericm/stonks'

    stable do
        url 'https://github.com/JuliaLang/julia.git',
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
