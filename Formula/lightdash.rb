class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.306.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.1/lightdash-cli-3.306.1-macos-arm64.tar.gz"
      sha256 "c3bb8e2950d7e890d2c5fc7894bfb5fa330884733a166aef289a1cfc6f63cb7a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.1/lightdash-cli-3.306.1-macos-x64.tar.gz"
      sha256 "a6e96451b78305b111545758dff08333ef1ce4cc8f9e983de8ff787e220e579e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.306.1/lightdash-cli-3.306.1-linux-x64.tar.gz"
    sha256 "f93fac7214ca55ddce5c646239fe824d295320e4aa50f96c9bad54adce7f754c"

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
