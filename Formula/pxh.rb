class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "3ac7dd1ada42c4d121b18db9a344778d051cd730ee2cac5ea6e157f262f476fb"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "391a5778948dc6becb2dc37111c8641c832e8363c2741ab8a4f6a56e3b03d150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41c34d2a967c3688c58412aa504ad176d90a815c52c4ab199b0c3e93a8ff7882"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a75547b82b5945cd85616337947d75344dcf142b819bfeff7162b22ecab68612"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
