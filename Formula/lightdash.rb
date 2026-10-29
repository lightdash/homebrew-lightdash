class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.106.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.106.0/lightdash-cli-3.106.0-macos-arm64.tar.gz"
      sha256 "d626fee1774778a60c1526514b975c2d543bc85d5152deafeac7bc500d1715d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.106.0/lightdash-cli-3.106.0-macos-x64.tar.gz"
      sha256 "5f6f7a1dbe27b8821f05a5644abf192ae44d21568cf47c818a9e6c606eb6c586"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.106.0/lightdash-cli-3.106.0-linux-x64.tar.gz"
    sha256 "9526064cb3fa1d4bd8c27882cb01ceaf392ddbcd5a45b41de52ce19ebddcc436"

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
