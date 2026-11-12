class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.229.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.229.0/lightdash-cli-3.229.0-macos-arm64.tar.gz"
      sha256 "ba2b0c22e77bca7cc6e7d9405d1108d794baff7a2413560634355517c0081e7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.229.0/lightdash-cli-3.229.0-macos-x64.tar.gz"
      sha256 "d3e3917ba10a9fbb3818761cb9c21b11b23a717e5927d0256f06bb40021d3fcf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.229.0/lightdash-cli-3.229.0-linux-x64.tar.gz"
    sha256 "fa842e696ab3a6ae84509828f53772b7dd4c04e4919f4a87845fc9b15f8aae65"

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
