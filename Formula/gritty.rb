class Gritty < Formula
  desc "Persistent remote shells that just work"
  homepage "https://github.com/chipturner/gritty"
  version "0.13.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-apple-darwin.tar.gz"
      sha256 "f9fa49da540a9acaf295007eade48c1e619fd84fceff080543552fb7abb5e284"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-apple-darwin.tar.gz"
      sha256 "066f33af801212b7920b21033e4b6bf3054737a51d15e9f3f06f8075ba88ffe9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3bcf1b18826af79509e7463df5e7fc8ec29622ab5759b35a7c220cf8a7b95f8"
    end
    on_intel do
      url "https://github.com/chipturner/gritty/releases/download/v#{version}/gritty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b936694b4e6c73d0e1f95f3355a613487941697c9b8c75e0f4e8702ad33e5dc6"
    end
  end

  def install
    bin.install "gritty"
  end

  test do
    system bin/"gritty", "--version"
  end
end
