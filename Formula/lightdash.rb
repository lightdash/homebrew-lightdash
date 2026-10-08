class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.489.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.489.0/lightdash-cli-2.489.0-macos-arm64.tar.gz"
      sha256 "4142f2a02404ff0feef8d2ce2ddfbf544b2f2c313d53b179d33a9d771b6cc61b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.489.0/lightdash-cli-2.489.0-macos-x64.tar.gz"
      sha256 "4a35bfd50c4658ef4b8864b67392dd5e4bebb70aa13958bd54339932e6ed735c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.489.0/lightdash-cli-2.489.0-linux-x64.tar.gz"
    sha256 "8b0dd78135e27369373272fbfee6e5ad9e21c9539eca7f7edd9d3857ebe47329"

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
