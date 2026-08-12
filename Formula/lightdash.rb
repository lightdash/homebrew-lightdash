class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.144.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.144.2/lightdash-cli-1.144.2-macos-arm64.tar.gz"
      sha256 "f8ccbc0a42e1805af4412a4efe40f7e136ed692ecfe961cb5af681b6124a7847"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.144.2/lightdash-cli-1.144.2-macos-x64.tar.gz"
      sha256 "9987d9fc7b299f78a472ad481d96844c6c75a9e260786ad4bb15731272e6de53"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
