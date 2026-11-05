class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.161.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.161.0/lightdash-cli-3.161.0-macos-arm64.tar.gz"
      sha256 "a5bb08dc7180bbd78e36678abaf40c12eb9bc97080420815a1b86421c37d55fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.161.0/lightdash-cli-3.161.0-macos-x64.tar.gz"
      sha256 "36c3d98d0ab4d31b3d3ecd932fbb95d98b509814c0c65b9dcb855c252371d530"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.161.0/lightdash-cli-3.161.0-linux-x64.tar.gz"
    sha256 "5800a2dc2ff7cef5e3f538a03685834a270aaae3cdf6660e761e30707cd9cc88"

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
