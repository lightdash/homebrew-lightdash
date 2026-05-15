class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2950.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.4/lightdash-cli-0.2950.4-macos-arm64.tar.gz"
      sha256 "0d4e9d56c6c5768656c4a365a0d91af19480f31bb30deddc4fe1ee1451c3d443"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.4/lightdash-cli-0.2950.4-macos-x64.tar.gz"
      sha256 "58f34a01fbf60a5880621a9698e6cf562aff8ed2a2c8207b53b32deee01fb93f"
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
