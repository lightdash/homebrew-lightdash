class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3032.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3032.0/lightdash-cli-0.3032.0-macos-arm64.tar.gz"
      sha256 "027ccdaf224a754f49aa3378577baedab95ef07b6e8c82a13ee9197c385eec16"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3032.0/lightdash-cli-0.3032.0-macos-x64.tar.gz"
      sha256 "f525d17b8dcbcdd0ec95734ba79adffee7217f05b3ca46df3723f666ffcfbbea"
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
