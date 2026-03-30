class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "daa2d7723e3f323adfbd87238ba3d9f4d87399fa0cc310f1345e90e48cbfeff5"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "98fc1be5ea82bdf40066d3cfeeb430a5bebf749dddaaee3012b12b975f8e1e7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b2e15f73d0c0646231b16f03b301f767cf8dcbc6cf2833f555bb64dcdcf9d61"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc79969a8db20f40dbd72a7f23f882a7f84888c6ca7f2831ac67112da3eca94b"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
