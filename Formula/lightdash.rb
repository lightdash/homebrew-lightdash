class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.4/lightdash-cli-2.547.4-macos-arm64.tar.gz"
      sha256 "37ecb1c407f7ac6df5051e032da5d79e1064e1f28f1d2a62868aa0e6ac54ded7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.4/lightdash-cli-2.547.4-macos-x64.tar.gz"
      sha256 "79fbaf7f7da0b741367fb309ecc13bccfd69de513d4ffcf6226f111edbf08238"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.4/lightdash-cli-2.547.4-linux-x64.tar.gz"
    sha256 "233c16717a54aae103f2d377e492f203fd98ecaf878978004b788a30241146fa"

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
