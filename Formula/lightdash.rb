class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.554.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.554.0/lightdash-cli-2.554.0-macos-arm64.tar.gz"
      sha256 "ae672be55c9e7daed08888d62b8119a0de06826e000dd238bbff72f3f1df28fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.554.0/lightdash-cli-2.554.0-macos-x64.tar.gz"
      sha256 "c5ecd01de87b021f2e6a517f1811ede78f917d0802e5c96dcb22ea5acc734212"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.554.0/lightdash-cli-2.554.0-linux-x64.tar.gz"
    sha256 "230b4d2eca4a5d663934a78864440f1dd36b23c0d7d4ae70cd14a31a7cc2eebf"

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
