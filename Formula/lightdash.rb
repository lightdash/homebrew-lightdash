class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.373.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.373.0/lightdash-cli-2.373.0-macos-arm64.tar.gz"
      sha256 "70186a7f4b089116b2676699e0dc77cc28f2572db34e516be75c944e57e10dc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.373.0/lightdash-cli-2.373.0-macos-x64.tar.gz"
      sha256 "1088814709d391e677a29423e907483e5354e4ea877189a1f2b3d3e219b7d3f7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.373.0/lightdash-cli-2.373.0-linux-x64.tar.gz"
    sha256 "92bcc1fac387d8c3fe4d4ed9b52f48dc718ba429b4ffc47016ece4dddb8b8cdd"

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
