class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.98.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.98.1/lightdash-cli-3.98.1-macos-arm64.tar.gz"
      sha256 "810f1ae1f42f35fa5b52ad9c68a2c54446537c119b04a94828fc03a947de7e9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.98.1/lightdash-cli-3.98.1-macos-x64.tar.gz"
      sha256 "4b4beb6147a19f48b7355dd4912bed9cd3facedd2b5c8904b4256511c2225720"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.98.1/lightdash-cli-3.98.1-linux-x64.tar.gz"
    sha256 "da0c9073e546ccd046254526c6a2e7db978b8f3171d17bef9102a0c44935f367"

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
