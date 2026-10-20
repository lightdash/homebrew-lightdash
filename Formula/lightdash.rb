class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.629.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.1/lightdash-cli-2.629.1-macos-arm64.tar.gz"
      sha256 "503f11bb61c99000a6434fa5009f8ab4ae6332330ac99cfd0d45f5847e8666d9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.1/lightdash-cli-2.629.1-macos-x64.tar.gz"
      sha256 "cce19b3a8f52ef6b0d37354c407e4f77b028b839dbe44620ea340c4f7bc6b3e1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.629.1/lightdash-cli-2.629.1-linux-x64.tar.gz"
    sha256 "53506294bb1375a843dff0f64a105a6b371699dc9a6b469a9c91b35f5ea4b9ed"

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
