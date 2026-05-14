class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2945.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2945.0/lightdash-cli-0.2945.0-macos-arm64.tar.gz"
      sha256 "7287dc63d45971d041e44ed2d2f76e709a97c244645b3bac329069373c11a975"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2945.0/lightdash-cli-0.2945.0-macos-x64.tar.gz"
      sha256 "672cb3a95227c9f9bcb3de3115681863f492eed7acf6f6c7017865ebc3bed022"
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
