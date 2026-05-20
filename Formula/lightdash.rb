class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2986.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2986.0/lightdash-cli-0.2986.0-macos-arm64.tar.gz"
      sha256 "827aab4efb56d743a438b4a8dac5cb96e536452db1d3efd54ed83a18a30f1582"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2986.0/lightdash-cli-0.2986.0-macos-x64.tar.gz"
      sha256 "b7483d732339856070877f9289bf23fdf21eb04ae3f610fc32bb8b967dd9a6c7"
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
