class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.449.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.449.0/lightdash-cli-2.449.0-macos-arm64.tar.gz"
      sha256 "9b626be979cb8ba9b82a171b7a16ccdd146f4df5fe4a3d1713e741862f461dc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.449.0/lightdash-cli-2.449.0-macos-x64.tar.gz"
      sha256 "cc1ce9f706b60b31f1a50274611ea7ea8bb33a30c27fd8b0c609c16d747ad522"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.449.0/lightdash-cli-2.449.0-linux-x64.tar.gz"
    sha256 "094b5699ee48066ff62494324a62ca35eba50c1c9b36960541c2cd3325e6589e"

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
