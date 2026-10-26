class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.55.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.55.1/lightdash-cli-3.55.1-macos-arm64.tar.gz"
      sha256 "644cd2cb16b2cb4a6744d62e692ae50a4d7a3039d893fd2f35c67bf18b487bdc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.55.1/lightdash-cli-3.55.1-macos-x64.tar.gz"
      sha256 "579cbfd549db378b87c4b76cabacb0e7cbcb731e06412e18d0968cd0d8f625aa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.55.1/lightdash-cli-3.55.1-linux-x64.tar.gz"
    sha256 "2fcfdc0219ad49cdbe99d46c1a6a0728ef78792a37cbde406f023ad629decfcd"

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
