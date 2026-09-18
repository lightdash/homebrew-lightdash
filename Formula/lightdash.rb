class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.263.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.2/lightdash-cli-2.263.2-macos-arm64.tar.gz"
      sha256 "da54346bcadd45d3bb8fdfb19dd4f4ea66c1372ec5628bf768d331f204fba9eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.2/lightdash-cli-2.263.2-macos-x64.tar.gz"
      sha256 "888efe847da161f4a44022fec9d27668202342f4e4e1301cd27d9e9e1b6a14d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.2/lightdash-cli-2.263.2-linux-x64.tar.gz"
      sha256 "149cdde79962ed6182b206b3d4b9f19b619af54253565d8f2acbfaea8fccbc2d"
    end
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
