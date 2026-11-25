class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.407.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.407.0/lightdash-cli-3.407.0-macos-arm64.tar.gz"
      sha256 "a85943ea4105dd35e74163d60f8c083224504895e69a08b8587fb524812d0906"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.407.0/lightdash-cli-3.407.0-macos-x64.tar.gz"
      sha256 "0f6b199adc26de9c3198536e90a8aaad696feb9ceab89a8223c79c8accb1e90a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.407.0/lightdash-cli-3.407.0-linux-x64.tar.gz"
    sha256 "a105c32a9be6712aae34740c0e68a255737a98623600fc28bdd6c604b1f2a234"

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
