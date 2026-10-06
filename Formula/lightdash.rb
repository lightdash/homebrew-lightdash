class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.439.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.439.2/lightdash-cli-2.439.2-macos-arm64.tar.gz"
      sha256 "9946e1130fe3e7774b95cfb7a061bbcfffca9ceefbd43994ce0d09960151a21c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.439.2/lightdash-cli-2.439.2-macos-x64.tar.gz"
      sha256 "b1ca8b4ae46faa0a98f205f8f18dfd7549a47101a9d0bf1cb085f49c6c6df1af"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.439.2/lightdash-cli-2.439.2-linux-x64.tar.gz"
    sha256 "8c6b8b280975bde4f3774b88a928963d90e34c2882159ab5329719714af2f380"

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
