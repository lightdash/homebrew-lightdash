class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.73.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.2/lightdash-cli-3.73.2-macos-arm64.tar.gz"
      sha256 "f3627b694e06fc739da8c9b0d8a71b2808e0e194a292d9752cdc7077a70dc2bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.2/lightdash-cli-3.73.2-macos-x64.tar.gz"
      sha256 "ff6700040edfbac4ba8f955e22ef0798b9fb2d10f5e90439562787cfb3fc4b0f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.73.2/lightdash-cli-3.73.2-linux-x64.tar.gz"
    sha256 "b18e0dd4e1a2d963f041dae8f11e911b07c9fbbbdcafff4faf26152f68e511d8"

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
