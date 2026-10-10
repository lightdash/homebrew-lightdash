class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.545.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.545.0/lightdash-cli-2.545.0-macos-arm64.tar.gz"
      sha256 "76065beee46f3ccbb0b1bad74be22ffaccffb5949b5928c2e14e04af4db3ef5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.545.0/lightdash-cli-2.545.0-macos-x64.tar.gz"
      sha256 "772ebbfc8d0ec2b512c2d5d6ebbae87b73723262a5c466c5f98d3b148be04498"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.545.0/lightdash-cli-2.545.0-linux-x64.tar.gz"
    sha256 "75ee61a45af4d8d731bb8464e102cb6a31716736888f71ffbd18066ff4e5df9d"

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
