class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.401.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.401.0/lightdash-cli-2.401.0-macos-arm64.tar.gz"
      sha256 "5eca00389f788b5259dfde59d1790866110e3e8e50dd7c5b48b37cfd95813c21"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.401.0/lightdash-cli-2.401.0-macos-x64.tar.gz"
      sha256 "bb0bad5c08d1a59b3809cee2f2d1325441984d82bbe9e363e4e6d898a91314a5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.401.0/lightdash-cli-2.401.0-linux-x64.tar.gz"
    sha256 "46d8d42625971b6902e6f0cfae28580358ada84a20c8e3006ceee258b1b7e127"

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
