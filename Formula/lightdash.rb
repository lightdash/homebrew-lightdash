class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.301.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.301.1/lightdash-cli-3.301.1-macos-arm64.tar.gz"
      sha256 "8588a3bda46b9778ec519540f7eb213dac2f7494a66c2ca680591eb5513b964f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.301.1/lightdash-cli-3.301.1-macos-x64.tar.gz"
      sha256 "98f3669b22c63291e470cda67a74ce3b3596fb592f7e302fe9222221a6abd048"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.301.1/lightdash-cli-3.301.1-linux-x64.tar.gz"
    sha256 "f828ec76af06dda454faf77d1abdfcbc9a2c92bffb567bae389de206567c3b0f"

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
