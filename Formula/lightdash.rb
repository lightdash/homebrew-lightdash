class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.353.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.353.0/lightdash-cli-2.353.0-macos-arm64.tar.gz"
      sha256 "833a878e91e77a3134655621d93b3bab5508e417fa81b7c6929e6ce4beedb429"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.353.0/lightdash-cli-2.353.0-macos-x64.tar.gz"
      sha256 "c4134cb07af11f24d963bfc9bde5386e733915fa98465ef9975888b5f1ad670a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.353.0/lightdash-cli-2.353.0-linux-x64.tar.gz"
    sha256 "104cbb10e1a7a4789ded691047b97470410d5bd36236f24dca6a35f0fa73b997"

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
