class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.445.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.445.1/lightdash-cli-2.445.1-macos-arm64.tar.gz"
      sha256 "148a1fa622e20444daff0e40c091a4946f173bae1d7a7cea3771b589acb2a445"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.445.1/lightdash-cli-2.445.1-macos-x64.tar.gz"
      sha256 "d6967e7c126b0a4c1b16f2c68c5138e1b58bd688b4b6a5694a32ca8c62a93809"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.445.1/lightdash-cli-2.445.1-linux-x64.tar.gz"
    sha256 "d3f55aa995cdf969994f1311643364442d80237086760f6e6ed22962834b97c6"

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
