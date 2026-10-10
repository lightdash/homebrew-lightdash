class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.534.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.534.0/lightdash-cli-2.534.0-macos-arm64.tar.gz"
      sha256 "19f37651e41cd10e3552e76d999ddbaa9f4eb77803e7e3bfb1fe90719424d203"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.534.0/lightdash-cli-2.534.0-macos-x64.tar.gz"
      sha256 "89043a3aa4c74a6f0b1dcd521d68494242284a646377746c9b9df1b801855c98"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.534.0/lightdash-cli-2.534.0-linux-x64.tar.gz"
    sha256 "1e0dd0797d05126b5dc240258f8ffbd58847288de645ae1b36a0a5db04eba0ec"

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
