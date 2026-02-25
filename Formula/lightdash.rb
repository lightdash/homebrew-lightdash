class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2521.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2521.0/lightdash-cli-0.2521.0-macos-arm64.tar.gz"
      sha256 "143966f66807bf0e7fa6d85559b7b629500d44d6df664269a6d57e91d7bf9917"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2521.0/lightdash-cli-0.2521.0-macos-x64.tar.gz"
      sha256 "3a83d33c788f2cb79254de13aa1a554c5dec68be63e660cb4846548df785b71b"
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
