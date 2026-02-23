class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2510.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2510.0/lightdash-cli-0.2510.0-macos-arm64.tar.gz"
      sha256 "f86905892d94c7abf22ebdfa2e8319f877b41252d2a9affac672bdb65e7d2a7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2510.0/lightdash-cli-0.2510.0-macos-x64.tar.gz"
      sha256 "12c53dd1339f89eba8af2f0078899493c74ccd4c3c2a44a22de529650f606388"
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
