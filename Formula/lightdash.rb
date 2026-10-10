class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.548.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.548.0/lightdash-cli-2.548.0-macos-arm64.tar.gz"
      sha256 "24bc661e6b24b0139147ccc255f75410ee66f2800a3f5a07e26794f1af9421e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.548.0/lightdash-cli-2.548.0-macos-x64.tar.gz"
      sha256 "901932e3a317de27dfddd41893b0bad4b0145aca85c190f368b165edc51ebc0b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.548.0/lightdash-cli-2.548.0-linux-x64.tar.gz"
    sha256 "e4e3fc218443da7773bb63a41eec4323740a5e4605bf9b1f2c30c2c40790de0f"

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
