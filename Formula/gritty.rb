class Gritty < Formula
  desc "Persistent remote shells that just work"
  homepage "https://github.com/chipturner/gritty"
  version "0.13.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-apple-darwin.tar.gz"
      sha256 "b71fde19781e61ceb46c6fad4b589bb5f430a65c8f12c46873702e6b0281a746"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-apple-darwin.tar.gz"
      sha256 "d0ebb0fd0279e6628b47897120eef5334064d7cc26393f8d5c336670d355fecc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abde0168f4f90c4f31c6714c1af837e343b5aa8fe2b8aaf108804be548325749"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "436bbe8c401a5e4c9304d2ebc78b111790d4c40dc9f0f96dd0e853128df909a7"
    end
  end

  def install
    bin.install "gritty"
  end

  test do
    system bin/"gritty", "--version"
  end
end
