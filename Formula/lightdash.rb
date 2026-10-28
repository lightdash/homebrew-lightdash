class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.76.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.76.2/lightdash-cli-3.76.2-macos-arm64.tar.gz"
      sha256 "c8570987d5f216c60831ef45634b944ebfcc078be7631c8d3d73ace197b523bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.76.2/lightdash-cli-3.76.2-macos-x64.tar.gz"
      sha256 "06e7b18401c952bbd427287d57f70216bae5da2d9ccf0a91f0a07dc54cc2b7c3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.76.2/lightdash-cli-3.76.2-linux-x64.tar.gz"
    sha256 "a3692e0da6729888a38684d01cc15604000db5801ec72e6dc359467e7cd8dd80"

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
