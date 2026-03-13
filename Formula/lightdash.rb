class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2617.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2617.0/lightdash-cli-0.2617.0-macos-arm64.tar.gz"
      sha256 "491eec77e361a90d95f7667543d872d038f339e633362f0b2b10a4f4bc591b22"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2617.0/lightdash-cli-0.2617.0-macos-x64.tar.gz"
      sha256 "23b3fbc799bd769d5958308439e354ac634ce34926524ca71327d68acfa39db9"
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
