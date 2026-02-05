class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2430.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.2/lightdash-cli-0.2430.2-macos-arm64.tar.gz"
      sha256 "ace07a4f0b57a203d6741c258df2a99beb2e70c701ae08f428f338e65681495a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.2/lightdash-cli-0.2430.2-macos-x64.tar.gz"
      sha256 "54366f625a9c2bbed0ef89742a5954d6101658d3d2d1a8c554c37b10009be809"
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
