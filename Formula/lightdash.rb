class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.121.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.121.1/lightdash-cli-3.121.1-macos-arm64.tar.gz"
      sha256 "10479921a3cf93124ef61007b2f533a4653604e39c156d827edd1fef4a8b1123"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.121.1/lightdash-cli-3.121.1-macos-x64.tar.gz"
      sha256 "41eec2380f06690485931341ff7701354a0f4e936a0a3e6c42b6683b301d38a4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.121.1/lightdash-cli-3.121.1-linux-x64.tar.gz"
    sha256 "3f6a68084856c947233c152f4699958017d3d4f07aa9b4ef2c89adc324237b23"

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
