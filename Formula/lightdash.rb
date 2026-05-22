class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3011.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3011.1/lightdash-cli-0.3011.1-macos-arm64.tar.gz"
      sha256 "33b6e7ac4560f8a50d37b4987b10567ca0a0a82d755ce800d9e1fd06a4fbee90"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3011.1/lightdash-cli-0.3011.1-macos-x64.tar.gz"
      sha256 "9035630fbae837b8b0fb644142d5dc87ac63e43a58d29afc53d26e7a81166b8f"
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
