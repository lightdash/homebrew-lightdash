class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.290.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.290.0/lightdash-cli-2.290.0-macos-arm64.tar.gz"
      sha256 "3f4ed7b2549be0be64972822551a4cc2362f72200d5314a2cf47b2a4676758dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.290.0/lightdash-cli-2.290.0-macos-x64.tar.gz"
      sha256 "80e3448924ecd2a6e35dae763103ba45b361d34c2c9cd49ad07c0b6978e307e5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.290.0/lightdash-cli-2.290.0-linux-x64.tar.gz"
    sha256 "70b01698b2540fd558f6c6b19b0aa83611001752958e7b0807626332eb1d0b7f"

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
