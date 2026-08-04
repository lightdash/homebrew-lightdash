class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.78.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.78.0/lightdash-cli-1.78.0-macos-arm64.tar.gz"
      sha256 "808ebb0bfdcc66791112095952b31f720cbd9e335c13548c581edcca64b18764"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.78.0/lightdash-cli-1.78.0-macos-x64.tar.gz"
      sha256 "d51a933f2ca8df8c3c43dc9bbac423fbb92d6e5f5f5c061dbec434ef3a43c513"
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
