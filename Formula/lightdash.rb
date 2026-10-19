class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.609.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.609.0/lightdash-cli-2.609.0-macos-arm64.tar.gz"
      sha256 "4ae66ceff0c5f61b0d694848d90765ec5e0f33051d3c98ae2b9b07d387a98023"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.609.0/lightdash-cli-2.609.0-macos-x64.tar.gz"
      sha256 "63f23c521bfd0560819e0cda621016d56aa6097b3377fbb444b114604fec8865"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.609.0/lightdash-cli-2.609.0-linux-x64.tar.gz"
    sha256 "0acc3cb24f569fac018a3362b3f48b14eac0462c817c8167d56c7e7847b3b241"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
