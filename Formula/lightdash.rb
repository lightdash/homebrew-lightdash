class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3311.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3311.0/lightdash-cli-0.3311.0-macos-arm64.tar.gz"
      sha256 "2abb9c61c7a52bb666dc0dc51d9dcbb5bb95e0d6b88ba0314ed2080c29e1e2de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3311.0/lightdash-cli-0.3311.0-macos-x64.tar.gz"
      sha256 "c9297f681515e5f336214fb2abad0b116e9233baf5be5e7c5dd4639b5a6d6376"
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
