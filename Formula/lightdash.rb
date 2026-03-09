class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2584.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2584.0/lightdash-cli-0.2584.0-macos-arm64.tar.gz"
      sha256 "45afab46056a98f4081704553302ebc580c6e3261f8a57fda563a3e34ba30ddd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2584.0/lightdash-cli-0.2584.0-macos-x64.tar.gz"
      sha256 "1466a81df752d49cccfd1230f36cf6e9f0ff12a36c619a0613523d33cb510408"
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
