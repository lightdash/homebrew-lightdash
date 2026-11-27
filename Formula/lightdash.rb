class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.433.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.433.0/lightdash-cli-3.433.0-macos-arm64.tar.gz"
      sha256 "4197bc0a06a59d8fa60b2fc41637f329fafa2a1a01b7f35b98eeeca477334c8a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.433.0/lightdash-cli-3.433.0-macos-x64.tar.gz"
      sha256 "110c9705ac5fb08bfdf76db030b6704a3ee9fd9ff3e436a654263a85c6cbf5e5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.433.0/lightdash-cli-3.433.0-linux-x64.tar.gz"
    sha256 "9a21d323e37aa79c0e9fa9eaec5341f10c32331861cd2c94681bb0f4c598ce37"

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
