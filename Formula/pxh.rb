class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "17db4adf4eb9a5a1af25a64347063a03d7450705f5974882fb80eb0656af42d4"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "4b0d7e5d93ecefb44f4eb7eea6b5f74efc3c1e67ecd5def4afe6b9d16350ca93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-musl.tar.gz"
      sha256 "265eaef91bb41cbab88f38cf256b0dd3b693c7b7508f357a5911b854704b2b85"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08f7177eccca8fc68fa7f100fef07cc3364c84f6a4dbfa1d3b930b5da1bd877e"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
