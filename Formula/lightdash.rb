class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.511.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.511.0/lightdash-cli-2.511.0-macos-arm64.tar.gz"
      sha256 "12a747a3c9d3944d5bcf3d57b053411f5a03f07f32be2c10e7d3787f2a32ed84"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.511.0/lightdash-cli-2.511.0-macos-x64.tar.gz"
      sha256 "c3030f643ad4ff0e9eec6baaa4eacb6a1544400c334b6d3f135a0ab5c51105b3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.511.0/lightdash-cli-2.511.0-linux-x64.tar.gz"
    sha256 "22d5ef2fcf28928ab352dbf0fc86933ea684aa45f4740583978c1d5f7613cab7"

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
