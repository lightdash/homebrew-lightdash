class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.396.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.396.1/lightdash-cli-3.396.1-macos-arm64.tar.gz"
      sha256 "76c454a84967e03a77fa6dd37bad8fd61952ecc16d66dceb9e6c3dc5aec9cd88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.396.1/lightdash-cli-3.396.1-macos-x64.tar.gz"
      sha256 "f413e0c0127c7ef09b627d021c0bf716cfbb36abfad3f1d172f6279c83e44d5c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.396.1/lightdash-cli-3.396.1-linux-x64.tar.gz"
    sha256 "723b8286909cc0dc1cd3474f89c875f80e10b7aca5b0f3eb1dc1a2e89f408056"

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
