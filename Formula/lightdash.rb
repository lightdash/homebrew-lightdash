class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.2.0/lightdash-cli-2.2.0-macos-arm64.tar.gz"
      sha256 "9113ff9a15aa02f1ad0adc3a649b97f1da8834b0e07a78b8d5f7c751356b87ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.2.0/lightdash-cli-2.2.0-macos-x64.tar.gz"
      sha256 "afe6650b67ccd2ecff04d4076af3fc92b5cabbcf7a144b8566ab2d6b642c0cc2"
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
