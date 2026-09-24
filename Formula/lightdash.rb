class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.4/lightdash-cli-2.319.4-macos-arm64.tar.gz"
      sha256 "110285bbac380c2cbc56c6705b4619a751ea24a4d36d3470cbdb4d9de273da77"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.4/lightdash-cli-2.319.4-macos-x64.tar.gz"
      sha256 "b2540efaa1a08ac5907b068062f7c1049d3178037a6b10a97981712038ed9f9c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.4/lightdash-cli-2.319.4-linux-x64.tar.gz"
    sha256 "acb0da8a082bd0fd62cf87e5c868d6c9ab586ec529138fb808e5e17366dcfa2e"

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
