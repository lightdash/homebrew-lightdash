class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.213.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.0/lightdash-cli-3.213.0-macos-arm64.tar.gz"
      sha256 "69121cadaad521d0fc34e0a7365109e80f6dd12d2186f97b2e5ce9389efe46fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.0/lightdash-cli-3.213.0-macos-x64.tar.gz"
      sha256 "9d07214c0bb82e152e15546e1f1c74376dd1cc95118b0c45c3ea69d370122411"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.213.0/lightdash-cli-3.213.0-linux-x64.tar.gz"
    sha256 "8133b8af9ca959788bba2a465418f07b3f6654502d3a03b902f6e9f7de818515"

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
