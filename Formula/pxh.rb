class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "10e63f35c750c34f7038ea32f88dc71f618ffba9a5e7262ffa0a8a047654ea52"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "4caba175d1d52bc72d050a638c3e8e70abd71cc04ffabe964092c9f83a70a8bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93f977637ad7276bcbfef5cbf7c719de11ed09e434b899f3810534df856df672"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b04fddcb5e8b12121384e59f60747a4d1b9adc223b242c14d5855046b42ba81d"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
