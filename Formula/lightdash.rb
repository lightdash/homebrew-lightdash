class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.3/lightdash-cli-3.411.3-macos-arm64.tar.gz"
      sha256 "b4632a90f219006189c797c138e80627f04eae50f5f16cad028bce2094a9b91d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.3/lightdash-cli-3.411.3-macos-x64.tar.gz"
      sha256 "6dcb0d6165e6a650c8e0827350baf641f2838012752c4a940e1429b4cfd34aab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.3/lightdash-cli-3.411.3-linux-x64.tar.gz"
    sha256 "3419ced93b9079e4b6f3281db859ffe92a5f38cc7cdd80332b3e6e7670da593a"

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
