class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.562.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.562.0/lightdash-cli-2.562.0-macos-arm64.tar.gz"
      sha256 "edd6abb1e7017370814f3fcb834c11796f27bf97336717b8200bc60c4e36a5eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.562.0/lightdash-cli-2.562.0-macos-x64.tar.gz"
      sha256 "a16d23f430d08dee0ec409cd5d6e01a7dc2e5da717bbd690eff08d6160a18e69"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.562.0/lightdash-cli-2.562.0-linux-x64.tar.gz"
    sha256 "d88cf5e12580ee79c0fca28680d0b19a4b947bf542c527be496f740c9284e98c"

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
