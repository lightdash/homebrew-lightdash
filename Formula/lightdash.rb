class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2924.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2924.0/lightdash-cli-0.2924.0-macos-arm64.tar.gz"
      sha256 "28cfb905274be4736e59dfa9d7ddf9e7910a085afdc2705e55a40887e24757dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2924.0/lightdash-cli-0.2924.0-macos-x64.tar.gz"
      sha256 "63d13a35b1524d67885a54a77d1dea4817c40f1dc466a3fba2a115cfff9997b0"
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
