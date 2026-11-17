class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.298.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.298.0/lightdash-cli-3.298.0-macos-arm64.tar.gz"
      sha256 "20cd64ac0663a7dcbf44a672707a539424e0c0ead4d7299c1b046eabb34a9e73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.298.0/lightdash-cli-3.298.0-macos-x64.tar.gz"
      sha256 "e11e7af0a037908191f24077c53ca4b5e9905b9d1586e7cd5b3fc642052167a1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.298.0/lightdash-cli-3.298.0-linux-x64.tar.gz"
    sha256 "8d31ffe3cb7a153883c26e99d7cc7c301dad2d3ab966cd2b362acefc3f913416"

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
