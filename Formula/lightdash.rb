class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.455.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.1/lightdash-cli-2.455.1-macos-arm64.tar.gz"
      sha256 "af67a3db0896e151294484825f83afda7390935ca86d8f4fa45e688f5edb7d65"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.1/lightdash-cli-2.455.1-macos-x64.tar.gz"
      sha256 "a8fd45b9d7937c3df4406f169fb9c6bf5d973a30eca9ea451e6a91f8332b73e4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.455.1/lightdash-cli-2.455.1-linux-x64.tar.gz"
    sha256 "15f3fa79d246d3b7bfecf51ffe135e5da00a202bea8c853e84b0eeb82d3dab38"

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
