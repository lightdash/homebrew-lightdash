class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.438.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.438.0/lightdash-cli-3.438.0-macos-arm64.tar.gz"
      sha256 "9503ab80d1ad8b3f2ddab289ed1e8769aa40af118e5267a35c32ea89638d4474"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.438.0/lightdash-cli-3.438.0-macos-x64.tar.gz"
      sha256 "6f74037aa8379032b489905888a3ee8ee4f63f793e14f929ea9fd44cea31f70c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.438.0/lightdash-cli-3.438.0-linux-x64.tar.gz"
    sha256 "a113b264bc5b770625454f37fd0c21f6ab005c4d6289ed206cb26ccb513aed93"

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
