class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "fabeb0ebebb4ae07744c0126acaf7c600f0e15cfe10235f9d213cd10d563992a"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "97877b3845205c4c093c2ef3ee2481cd3590c89ce7121db54ac14831fb59a032"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "089a8609c906c7e2ed405e1085305ecac1efd722f01db6d578a04568f07fa202"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66f0f4b69349a33360ba5722830be29fcbaeaddbe6c4ea1bd039b63cb35f7086"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
