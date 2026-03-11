class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2604.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2604.0/lightdash-cli-0.2604.0-macos-arm64.tar.gz"
      sha256 "82eb11ae543c3f7662faf031a784b02ba5b37f7443ab4e6d565f21a8338128da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2604.0/lightdash-cli-0.2604.0-macos-x64.tar.gz"
      sha256 "f232868e0beabf5c730b6d57ffe343edd0902047249197d9a071b1a5f1dc80b0"
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
