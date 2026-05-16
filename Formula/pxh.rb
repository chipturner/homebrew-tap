class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "887ad0a6453a83bfb40395ba08f9df94fe7493e6214ab2167538a306508111cd"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "ebf8ce5cab13d2e41e582743d8fe28c6bc846a65db56f65bc6d30426130b6446"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1d465aa350c7aa75c6ad5e69c0f583cf962aa000ea6db08a882cd63a7ea9cfd"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e926998eb3e424f808fe95f58d82d4241d77ebaa31df54d2242b80e033e32eda"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
