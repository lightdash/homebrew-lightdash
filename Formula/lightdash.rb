class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.408.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.408.0/lightdash-cli-2.408.0-macos-arm64.tar.gz"
      sha256 "8ed909d348775365494406929d4372157dcb9b386c353ee85818d299a1c0da5f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.408.0/lightdash-cli-2.408.0-macos-x64.tar.gz"
      sha256 "712fe7c5f591fac2b56f453ec3e3c965e19ab5c110ac9ad95974d51c60d5ed4d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.408.0/lightdash-cli-2.408.0-linux-x64.tar.gz"
    sha256 "608d6fd63de2e3e85615ea5281581cb394f290c451ef05caf84e4a732e36c879"

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
