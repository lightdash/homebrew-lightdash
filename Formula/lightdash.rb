class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.288.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.4/lightdash-cli-2.288.4-macos-arm64.tar.gz"
      sha256 "29cf8e2e22befef71b1f59313ff9912fed441b2e6db7dcab2ea6ab1b0e65de4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.4/lightdash-cli-2.288.4-macos-x64.tar.gz"
      sha256 "d3223927522f84a2992dd92b41608d80685f05cefbc0c09138f6c420a0565df4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.288.4/lightdash-cli-2.288.4-linux-x64.tar.gz"
    sha256 "407314840f46214146a8641afc32ace732c27098b56a8655455940eb6e035209"

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
