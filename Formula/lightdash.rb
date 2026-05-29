class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3046.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3046.0/lightdash-cli-0.3046.0-macos-arm64.tar.gz"
      sha256 "8c7a362902696b9cdf1ff2b6826f4aa84da2f8391392c3fb71ae480b77bb050b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3046.0/lightdash-cli-0.3046.0-macos-x64.tar.gz"
      sha256 "7048183ca60c5a4d37ab378c91f2d7ca339b0392dee7eea5bcd541b4e4f02f32"
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
