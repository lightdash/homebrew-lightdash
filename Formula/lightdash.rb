class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.270.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.270.0/lightdash-cli-2.270.0-macos-arm64.tar.gz"
      sha256 "15401343f8db60d3a4007d56443658c7eaf97bf973a19ae948cc4f77b9b48643"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.270.0/lightdash-cli-2.270.0-macos-x64.tar.gz"
      sha256 "556d519da57b8b5a719617c24287067fbe37e111b884fb6248cd6166f12b8d64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.270.0/lightdash-cli-2.270.0-linux-x64.tar.gz"
      sha256 "5f6845a0df9e70880a004a7914c6044d51d054cb1e4406d0340e022385d57625"
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
