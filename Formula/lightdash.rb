class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.220.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.220.0/lightdash-cli-3.220.0-macos-arm64.tar.gz"
      sha256 "48d08af5b8c34188e0685eee7da9150b9d5c963e3ba4a68de94786c64c446c9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.220.0/lightdash-cli-3.220.0-macos-x64.tar.gz"
      sha256 "a352f75b73d74c7d72ef2063b1bf856b51c1d14f5e11a1f5feb7237b3f386759"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.220.0/lightdash-cli-3.220.0-linux-x64.tar.gz"
    sha256 "2de3e410e546527c28a7de184d61ab80ce4ccebce3f2a2db74c0c0d34b009f17"

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
