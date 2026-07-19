class Gritty < Formula
  desc "Persistent remote shells that just work"
  homepage "https://github.com/chipturner/gritty"
  version "0.15.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-apple-darwin.tar.gz"
      sha256 "406ab8731a91082b2f98d80dd1708b1dbdfade4a43314866ec710c617908fbf5"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-apple-darwin.tar.gz"
      sha256 "a1231258e12e96ee721902a20fb857714d8307bfd58ed48cd2f0fe0e029b4694"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84f3df3c9e7f8d1814a8e0546ad1b8bcb04454d927074983f1e3b78939ea339d"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca40eabdaf9e879845fd3318a13507cced6870fc163a5d0d508ddb4230662f99"
    end
  end

  def install
    bin.install "gritty"
  end

  test do
    system bin/"gritty", "--version"
  end
end
