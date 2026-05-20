class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2985.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2985.0/lightdash-cli-0.2985.0-macos-arm64.tar.gz"
      sha256 "b319490af0fa994a3dbd27c5373d24dffd531c800edc84ebdad8503fd26245ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2985.0/lightdash-cli-0.2985.0-macos-x64.tar.gz"
      sha256 "a4c6348aac2c773ee84c81ac1ebf14efac4260e4d1d7d60c5c6bae87b31919d2"
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
