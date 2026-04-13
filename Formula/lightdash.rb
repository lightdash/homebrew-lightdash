class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2753.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2753.0/lightdash-cli-0.2753.0-macos-arm64.tar.gz"
      sha256 "40d5038e136c3674bf93c07d4c3d85b1a4f03ef6bf0912b652b4348260e70f12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2753.0/lightdash-cli-0.2753.0-macos-x64.tar.gz"
      sha256 "1f901dba6751182b3336e237be45bb20aab72d977b280d2bec8c5602da7763dc"
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
