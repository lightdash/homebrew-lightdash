class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3270.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3270.0/lightdash-cli-0.3270.0-macos-arm64.tar.gz"
      sha256 "7e54e4deb8388449ab25ed06d96b574ec31ebdc002cfebac062423e5af6fd8d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3270.0/lightdash-cli-0.3270.0-macos-x64.tar.gz"
      sha256 "27cc0dfe09a66c421de02d76b3990c7a8c82037e3757c6a79a158297a7853ba7"
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
