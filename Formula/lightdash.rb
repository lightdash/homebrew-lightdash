class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.313.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.313.0/lightdash-cli-3.313.0-macos-arm64.tar.gz"
      sha256 "0deba93274865b77e6f05d16c06cf90095761510eb006ac2212e29f0736c2f5f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.313.0/lightdash-cli-3.313.0-macos-x64.tar.gz"
      sha256 "44d539ffefe4f3b564acdc3584d85ad53812f090b8978e46a87a11a0266c7581"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.313.0/lightdash-cli-3.313.0-linux-x64.tar.gz"
    sha256 "6a46a7308f3c571e4a351a109567f99b9d8288a3b347d5ac288ef464dac5b383"

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
