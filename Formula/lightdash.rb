class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.318.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.318.0/lightdash-cli-2.318.0-macos-arm64.tar.gz"
      sha256 "2e778118eafcfeb156b997756ff78c1926f2d0af1ed192468f9677cc651c386f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.318.0/lightdash-cli-2.318.0-macos-x64.tar.gz"
      sha256 "5808efbaef99d779bae057c698e9fd13fa95d4b4f9f93aa373773e853a7d2b86"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.318.0/lightdash-cli-2.318.0-linux-x64.tar.gz"
    sha256 "b470143696a4ceb1a662d69778916720e4a4cd8bef0bd213ac7bf50d9fe53b1b"

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
