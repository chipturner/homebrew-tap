class Gritty < Formula
  desc "Persistent remote shells that just work"
  homepage "https://github.com/chipturner/gritty"
  version "0.12.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-apple-darwin.tar.gz"
      sha256 "583dd57b4d81306f9bd83314aaaeb81e85a2a33399333b594bffd55d616647e3"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-apple-darwin.tar.gz"
      sha256 "ac3219c58165d9c4ec7bb1a6125dcac704a7c219a28ec797eec3062cb2e69e05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bfa10acb1848edda11d4c756163e9f636f673b992e88e4374e9e1af89f6a336e"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b95f30b5d4f7c5d868607f487a67bc13a64fde600467be125ffeb44838ec2617"
    end
  end

  def install
    bin.install "gritty"
  end

  test do
    system bin/"gritty", "--version"
  end
end
