class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.18.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.3/lightdash-cli-3.18.3-macos-arm64.tar.gz"
      sha256 "459893cdd0f02aaa38242fb3dbd5074fe1e069a1389abfcc0258834e3c6dbea4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.3/lightdash-cli-3.18.3-macos-x64.tar.gz"
      sha256 "8ab2c93b8b31a944938c673e4f890ebc94869d3ae89512089e522c2b2336f181"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.18.3/lightdash-cli-3.18.3-linux-x64.tar.gz"
    sha256 "f913cf535204ad55f9bde5cd98eb5591367ad955a1371036f65fa428e435bc51"

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
