class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.444.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.444.0/lightdash-cli-3.444.0-macos-arm64.tar.gz"
      sha256 "2919919123cfc99210f2f8d2e5c8a4cf7ee7b570acd4bf42745e4c8d3d3d6b3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.444.0/lightdash-cli-3.444.0-macos-x64.tar.gz"
      sha256 "b74444a3f52377b2a3ce12a37ac913c7b23448cec435c97287998f87f8278d3e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.444.0/lightdash-cli-3.444.0-linux-x64.tar.gz"
    sha256 "81384cf953ed58072bb5de08dcc151c170e2b89b750219eceaf2dfd5b48b0429"

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
