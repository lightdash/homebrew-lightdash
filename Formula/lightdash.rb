class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.419.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.419.0/lightdash-cli-3.419.0-macos-arm64.tar.gz"
      sha256 "b17764b26da265185e4af73e147c7a10a685cd497e38569a35a7b4a955bb676f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.419.0/lightdash-cli-3.419.0-macos-x64.tar.gz"
      sha256 "1ce6c490a454ad2eaf2f16f57c2ae8f5e8b836405e49f4beaa42eec9b74ddc54"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.419.0/lightdash-cli-3.419.0-linux-x64.tar.gz"
    sha256 "2067b382da228c9f3c5ca7c5ce2fd927e739ba9a30d7ef79fd80e69e25f13c39"

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
