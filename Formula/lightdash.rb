class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.173.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.173.1/lightdash-cli-3.173.1-macos-arm64.tar.gz"
      sha256 "3cc8caeffe71e59adfc5b863bebe6f283c7747a11fb95401adbacdc1f7868a4f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.173.1/lightdash-cli-3.173.1-macos-x64.tar.gz"
      sha256 "75f3c949e6920f3b1d047ca134bd766aaf4ed4a71db72653743601ecce75e93b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.173.1/lightdash-cli-3.173.1-linux-x64.tar.gz"
    sha256 "cc49e11dca76a1e165c42bf56aa5c6af56ef1573f5af2fd72ca134d5112dc50b"

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
