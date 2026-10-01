class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.2/lightdash-cli-2.405.2-macos-arm64.tar.gz"
      sha256 "bc81b07caac12a12f72bd3f1e2439caa953dc44677a8f90ee9445778a1afc782"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.2/lightdash-cli-2.405.2-macos-x64.tar.gz"
      sha256 "c3fb3f9a24e87632ff3767add3c43e277823ae1cd1e831ea59afd4d3bfb16918"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.2/lightdash-cli-2.405.2-linux-x64.tar.gz"
    sha256 "f56ef31c8f0ce9271274b298cf369b34aae41276cefe669077aca554b3d62245"

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
