class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.381.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.1/lightdash-cli-3.381.1-macos-arm64.tar.gz"
      sha256 "d9c87ac5a815fce74283301f90d9b9f3785d0f2d1a4385cb23a4529ce69dd292"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.1/lightdash-cli-3.381.1-macos-x64.tar.gz"
      sha256 "ced1b01635543975cce4dfce5fb7893b90ef7887c19f1efd207a41a9de1a27cc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.381.1/lightdash-cli-3.381.1-linux-x64.tar.gz"
    sha256 "a6b2190f59658295b29e8877c11751ec678ea4f46ccd711a398079dd5a8f18a8"

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
