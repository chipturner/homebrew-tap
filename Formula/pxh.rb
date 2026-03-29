class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "aacb3046df7575a7373f35936b5cccb38d646ffeb3a49c84a9b544ed1695e66b"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "eb94e76481fc6420e5460c2b329e41d9f10aff50dee9c8c5b87d4b7e8d317da4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acef24e482fc6ef97a2b0c2ddf9c66d1020bb0020a947634f1ed56c67593a1e1"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35043f0b75a9fe6bf07691a3b616f1df4f134de9fea75a2d0b45c82326586d5e"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
