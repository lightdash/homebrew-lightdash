class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.118.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.3/lightdash-cli-3.118.3-macos-arm64.tar.gz"
      sha256 "60b238283f7b41dbedcfdb79b7954d611735a4d87feebe30eb9ea60006351296"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.3/lightdash-cli-3.118.3-macos-x64.tar.gz"
      sha256 "71ef48d36a25d1d519d4e4311f332900d85b8b8a636c6489440c412d3345d019"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.118.3/lightdash-cli-3.118.3-linux-x64.tar.gz"
    sha256 "acbd4fedb5938eba5892925f79f6618f07c18eb59e0fb41fdc54dcc187a7c9c5"

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
