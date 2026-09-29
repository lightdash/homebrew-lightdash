class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.363.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.363.0/lightdash-cli-2.363.0-macos-arm64.tar.gz"
      sha256 "cb2b2d3f2a4c8ccabadef536bcdc4c2583c607212afc4862a9422fb8ff5376d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.363.0/lightdash-cli-2.363.0-macos-x64.tar.gz"
      sha256 "193916834e0e42347399c86f3d784390816cc3c04e02a4c835975b81b4a79bba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.363.0/lightdash-cli-2.363.0-linux-x64.tar.gz"
    sha256 "5912f08df1a97c76c0de6ab9644b45057a3a4e44508505c1f9d980728f9fb1e7"

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
