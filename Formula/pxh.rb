class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "9a632ece77330875cfb7bb3f699dc52d8d12d86879804128ebd78c8760ec3192"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "2ff5fb0ec9d992ca005e67e5907a25d862a575f99d7f1f4c9e055f7e53e10a62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7fe4d96bcc1b60e41d8c81c36c2a82853da7f1c65a50f0b3c603617a686e5665"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b236aaa1c4beeed7b7a0385e4e9211de79a0cd2593e4c3f7ea2d405e467844e"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
