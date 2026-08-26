class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.10.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "0b574e7848fe47a3d6088f5029af9f9dc803f25cb941d926f38a75a8ee2a2bd1"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "e41e2fa265fa3d6d025b1e7e8ea47260cb4e860c218f98395655a2ea77f93cdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f36ad49fbfa63cef95995885b750f88c363fd701a1eb4d62bbca1b275f3f52ce"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-musl.tar.gz"
      sha256 "163c51fe7e710db05a023af5aff3bc86bcf772939cf5ea0304584f7ac35436b8"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
