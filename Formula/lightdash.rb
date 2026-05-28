class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3041.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3041.1/lightdash-cli-0.3041.1-macos-arm64.tar.gz"
      sha256 "45245271b449382bac13d37820d1e95f2d4e8e24472a49e120d634f65701b964"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3041.1/lightdash-cli-0.3041.1-macos-x64.tar.gz"
      sha256 "f2d48f57d25d101546f971e2bf0eb4bf4e6bff36e8b02787f945412de7733494"
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
