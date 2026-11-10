class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.203.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.203.1/lightdash-cli-3.203.1-macos-arm64.tar.gz"
      sha256 "e7278df7f7e74e0e87ff3bfe6f738d440d7183d3a1b4c811e5fe03bcabde8a44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.203.1/lightdash-cli-3.203.1-macos-x64.tar.gz"
      sha256 "8db8812108c2aa52033deddb89592500e7ede2f07b28811f668a8283524cbca4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.203.1/lightdash-cli-3.203.1-linux-x64.tar.gz"
    sha256 "293d2fce1b8a9259b903cf98536879aa920ef5c78d904b5b5c9a1cae1a704df2"

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
