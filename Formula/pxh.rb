class Pxh < Formula
  desc "Fast, cross-shell history mining tool with interactive fuzzy search and sync"
  homepage "https://github.com/chipturner/pxhist"
  url "https://github.com/chipturner/pxhist/archive/refs/tags/v0.9.10.tar.gz"
  sha256 "b8ed78dec15568ae938b7db9c8588b974b895a0175bf1d0af3b3f7600ebb253b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"pxh", "--version"
  end
end
