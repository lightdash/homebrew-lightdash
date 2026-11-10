class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.194.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.3/lightdash-cli-3.194.3-macos-arm64.tar.gz"
      sha256 "97dd295388346943ff4d0412fa5f195ac2946c3069749f4bb59089d9a85aefed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.3/lightdash-cli-3.194.3-macos-x64.tar.gz"
      sha256 "0a27cd3fd7187a560e61f2827597d55e899a13f2d4d3f14fe3fa2b717461df82"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.194.3/lightdash-cli-3.194.3-linux-x64.tar.gz"
    sha256 "6a1acaf1153bb627f4a6bd7692918ad71423877f675865ff0c50971e7e12dae6"

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
