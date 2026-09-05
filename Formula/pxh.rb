class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "cf816b7427ee7c5455c4591a1638e652e3ed17b3a270ba305eeb76c3ff78ff56"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "12dfb9a4ee4aeec46bce87990d1ed80c5ee8004e2021e091e71a463ce9952500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed37e8d8a7d628ed395d9e7205f96ebc4f4fe4a70cbf98b1e1363ac7d68a1fb0"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b162d67dd11b5cb4cd0353d3d1dd5d6d593597b5858814d1b9504d65c9fbf541"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
