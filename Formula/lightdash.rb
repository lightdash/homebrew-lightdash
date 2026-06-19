class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3204.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3204.0/lightdash-cli-0.3204.0-macos-arm64.tar.gz"
      sha256 "6b71fafe7bc2167d0c22ab0d383a52583772ed8b87c694f8d86084b2bfcbae6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3204.0/lightdash-cli-0.3204.0-macos-x64.tar.gz"
      sha256 "588620d7cb594b72a9d50b7d244e9e12faada358669b7877ee23d277fb35a523"
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
