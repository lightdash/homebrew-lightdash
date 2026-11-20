class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.6/lightdash-cli-3.351.6-macos-arm64.tar.gz"
      sha256 "3b88032a6450f42e5cf4bdbe585d42c61502c9be0013c37a75bc4f180879c13a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.6/lightdash-cli-3.351.6-macos-x64.tar.gz"
      sha256 "9ce0ca899c6e6cf28f86b0eaa32674c063a1060fb941a680fcb215baaaf54884"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.6/lightdash-cli-3.351.6-linux-x64.tar.gz"
    sha256 "0d80f7619695839298d8053e5672c197e9ffdb9418025d04b4bc73e52c71e3c8"

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
