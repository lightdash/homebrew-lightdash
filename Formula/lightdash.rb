class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.401.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.401.1/lightdash-cli-3.401.1-macos-arm64.tar.gz"
      sha256 "fab4ed6e45699306a6acb9fb2a6459b1a5a6ea79554ac0fde229c35e5a39c4dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.401.1/lightdash-cli-3.401.1-macos-x64.tar.gz"
      sha256 "9c0209446f517bc8515310b5a01529f6a22cd7f594957f89dec5baebc1e40985"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.401.1/lightdash-cli-3.401.1-linux-x64.tar.gz"
    sha256 "5e3102f74109e00dd7fa29bd213b2457582ea34ae86d68035972bb0214a3cbac"

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
