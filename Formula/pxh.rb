class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  version "0.9.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-apple-darwin.tar.gz"
      sha256 "eb52d18ec0af112aa116f360ad39320268bd5bdf0942894d9c73bd4ec2e9a0ab"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-apple-darwin.tar.gz"
      sha256 "5361371af9ec26eae8339226542a226a756d042dedbcb77b34c62f4354ce2643"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5aa559d1da95a9bed26ecae1f505ba1e89f69f0856a4f53fe670ba86fa7ddf95"
    end
    on_intel do
      url "https://github.com/chipturner/pxhist/releases/download/v#{version}/pxh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60316a491684c31bab65e53059f83d7bf88829be81d8d41a0f830df4a0b797d4"
    end
  end

  def install
    bin.install "pxh"
  end

  test do
    system bin/"pxh", "--version"
  end
end
