class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3133.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3133.0/lightdash-cli-0.3133.0-macos-arm64.tar.gz"
      sha256 "f6da04911091f338c41cd8dd6f9baa68491111fffd1047a4427319511c744ceb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3133.0/lightdash-cli-0.3133.0-macos-x64.tar.gz"
      sha256 "ee0770e3b1b462026b98d8e853ef6b5215ca2c6c6b659342044639626e9865a7"
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
