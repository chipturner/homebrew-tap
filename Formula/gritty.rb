class Gritty < Formula
  desc "Persistent remote shells that just work"
  homepage "https://github.com/chipturner/gritty"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-apple-darwin.tar.gz"
      sha256 "ba8d3fd2f32da92562ea712a49a2247432a8723e1df252e17ba8f79bee752bf0"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-apple-darwin.tar.gz"
      sha256 "6e8a293e180cb7d1a6854d87f3fcaf638d54e23784ba7ffc1dc4ccb9c99bd4bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3008bbb0cb97a091b92270f37e3cbc953f31a5a50c96dbc46ee1fd9826a0deb1"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7ecb7bd84b9d70ea26888247f148eb8f81eedf79546abe13fda194a9ea7ee3d"
    end
  end

  def install
    bin.install "gritty"
  end

  test do
    system bin/"gritty", "--version"
  end
end
