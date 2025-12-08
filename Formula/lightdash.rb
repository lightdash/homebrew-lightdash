class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2233.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2233.1/lightdash-cli-0.2233.1-macos-arm64.tar.gz"
      sha256 "ea4444e4a43385774d30d96b52727ee2c46317d5be3a2f0579fa2966a9fd3927"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2233.1/lightdash-cli-0.2233.1-macos-x64.tar.gz"
      sha256 "2ece5e5f7ecc53087c7c201c72b34952653b6078806b7b552e3ef34c29199a2e"
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
