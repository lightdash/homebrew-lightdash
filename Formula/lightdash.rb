class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.301.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.301.2/lightdash-cli-3.301.2-macos-arm64.tar.gz"
      sha256 "a2da704ebd6c950e2935795d0abc016246b2e2fe3476ba26dd19f9c8cbc3144e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.301.2/lightdash-cli-3.301.2-macos-x64.tar.gz"
      sha256 "23e6bd105d525c88b04190ff2a34bca588fe9e56a2024905f32cba390ee804f8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.301.2/lightdash-cli-3.301.2-linux-x64.tar.gz"
    sha256 "fc60983006ef084bd36acf4955027bc1d79394095756cd1affedf2af288fdf2a"

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
