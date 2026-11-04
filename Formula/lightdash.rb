class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.149.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.149.0/lightdash-cli-3.149.0-macos-arm64.tar.gz"
      sha256 "942366d2cbc0fd6f8ecb172e27a6387d4649162c778a2ddd39e912423bd9d746"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.149.0/lightdash-cli-3.149.0-macos-x64.tar.gz"
      sha256 "e0d1d9ad7ad34a0ae7a7446ebaa34e84ea78cf772d632dc368ed80f6538df19e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.149.0/lightdash-cli-3.149.0-linux-x64.tar.gz"
    sha256 "599f9a24359acb86076624b49e997635d1785dad65ae7533ebfeaf312f5e4072"

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
