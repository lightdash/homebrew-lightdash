class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.409.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.2/lightdash-cli-3.409.2-macos-arm64.tar.gz"
      sha256 "36bfafe87bb02c978b79385183898e662511f95af4004b69a49dbc027f9945b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.2/lightdash-cli-3.409.2-macos-x64.tar.gz"
      sha256 "b8c1f38d1557bcaf1f85928fff27e6bd3ee9ff45dca41e23bff544b3f4fc7be5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.409.2/lightdash-cli-3.409.2-linux-x64.tar.gz"
    sha256 "acf691d761d5c7db04e1433e040fb4c84f63cd8e9ab25150bd9203c4b26f5900"

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
