class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.4/lightdash-cli-3.53.4-macos-arm64.tar.gz"
      sha256 "3cca7ea0ca03a77583d846f0db9fad916facd5fcb525fc1604dfc17f463ded60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.4/lightdash-cli-3.53.4-macos-x64.tar.gz"
      sha256 "9cd80210b987d93127b89232a392baec9a58e349a1d49335db59d60445c8c2ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.4/lightdash-cli-3.53.4-linux-x64.tar.gz"
    sha256 "60878f668a5a56e5db24976185d11ede0cf90191da58b6b51cb10e55beb76469"

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
