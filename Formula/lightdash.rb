class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.441.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.441.0/lightdash-cli-3.441.0-macos-arm64.tar.gz"
      sha256 "2dd4c8f35c53a0d28fc527c48626f2a8366ec1662d5b37eda5c1d1c4a5487ce8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.441.0/lightdash-cli-3.441.0-macos-x64.tar.gz"
      sha256 "29b34b7fdd8cf2873650658d9d8a36280d4d8ece4199ccdc7cddfce7e17203fd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.441.0/lightdash-cli-3.441.0-linux-x64.tar.gz"
    sha256 "df7523c02d73c2697ddcb001cffdfd3f201ad1862f83907f20340a0d2bd3b731"

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
