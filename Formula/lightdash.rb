class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.134.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.2/lightdash-cli-1.134.2-macos-arm64.tar.gz"
      sha256 "f8954b696bcb61b3b981b3f2dd3aa787d7120cc7ef3631df19bf29ca370d59f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.2/lightdash-cli-1.134.2-macos-x64.tar.gz"
      sha256 "13ef93863bb6ff065218260162c21638f422563cd3fbdd799577a57b27f3ca6a"
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
