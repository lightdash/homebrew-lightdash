class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.146.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.146.2/lightdash-cli-3.146.2-macos-arm64.tar.gz"
      sha256 "ed5d072cd62afc2e9a01cbc58a25810f51e0dc8ab793bd69655ab48bf52dfba9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.146.2/lightdash-cli-3.146.2-macos-x64.tar.gz"
      sha256 "ec9d11b209ea04eb5e6191535b06c2df7314f441df07fa2269091306923e8bf8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.146.2/lightdash-cli-3.146.2-linux-x64.tar.gz"
    sha256 "9ae389738f5dcd0dd97d04b3885c083cadfb8dec1df641d4878759428349793d"

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
