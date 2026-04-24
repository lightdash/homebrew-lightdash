class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2800.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2800.0/lightdash-cli-0.2800.0-macos-arm64.tar.gz"
      sha256 "e089444c180037bd1cb723a40333d29f9567c07eb246b9bf0eca0be5b2e375c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2800.0/lightdash-cli-0.2800.0-macos-x64.tar.gz"
      sha256 "685afcb555c8a4066eb8e10930c14581049aa4c334707b0aac91324811807bac"
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
