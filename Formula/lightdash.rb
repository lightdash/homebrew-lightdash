class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.8/lightdash-cli-1.202.8-macos-arm64.tar.gz"
      sha256 "5a3127729b1d80553be00d5453e18b07531599a396fe1ae7a6d6eaf88dc13afc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.8/lightdash-cli-1.202.8-macos-x64.tar.gz"
      sha256 "f4bc9092cf45d5bb8b546ba3b8fa3de11ec347c47cf02daedc3189d4e846f5a5"
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
