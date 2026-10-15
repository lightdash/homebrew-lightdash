class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.587.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.587.0/lightdash-cli-2.587.0-macos-arm64.tar.gz"
      sha256 "05c2a091d2371ecb12dd1f635c0a335142e12e4dc9a79d791deb333bdbda24cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.587.0/lightdash-cli-2.587.0-macos-x64.tar.gz"
      sha256 "37443d4068c2377e54d3f62e7b3ee499f70afebd7e552e9f0343d5668ab3ed58"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.587.0/lightdash-cli-2.587.0-linux-x64.tar.gz"
    sha256 "6b3451870f5a260f4ca98ef773826d32dda282f82c589bdc597d3562de551421"

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
