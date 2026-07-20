class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3422.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3422.0/lightdash-cli-0.3422.0-macos-arm64.tar.gz"
      sha256 "65328d09d8a93043aac8b9670a8f1cdd681607e8414707dd9f8ab190cc147ca6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3422.0/lightdash-cli-0.3422.0-macos-x64.tar.gz"
      sha256 "d237c882808aad986d5e55f2c84113faf025bd70dad961e1264fd0aad155634d"
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
