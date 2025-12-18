class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2263.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2263.0/lightdash-cli-0.2263.0-macos-arm64.tar.gz"
      sha256 "9fcf80d5be4e82cdf24aaef2c734086072f9898777dc34ef93555bbb8aa81673"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2263.0/lightdash-cli-0.2263.0-macos-x64.tar.gz"
      sha256 "91a9e76ef86ec4b05f72b268e1527d9019f3696381e33cc1d6196b94de7405f5"
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
