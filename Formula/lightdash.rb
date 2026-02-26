class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2534.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2534.0/lightdash-cli-0.2534.0-macos-arm64.tar.gz"
      sha256 "158a248667208cb624faa1537af9c178d79627c9433a177556236b2dfc8273ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2534.0/lightdash-cli-0.2534.0-macos-x64.tar.gz"
      sha256 "1483d7031cb19f4b5ae1b84100132395e1e6fe0d34b171a0b3a2d5dbb37fd744"
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
