class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2781.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2781.0/lightdash-cli-0.2781.0-macos-arm64.tar.gz"
      sha256 "164c5c6b48899b867070df6d6450ceb3e4676b9c1bb70da5775d2f93b67c3e25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2781.0/lightdash-cli-0.2781.0-macos-x64.tar.gz"
      sha256 "0f6b602d9c23c677b4bbc776af8b6847beb8cb7b9d22280df74c96b02c1319c1"
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
