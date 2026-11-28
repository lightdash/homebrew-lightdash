class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.445.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.445.0/lightdash-cli-3.445.0-macos-arm64.tar.gz"
      sha256 "d30437280806d0ce63ecb9c4dfade03fbf0a818f91f036db1bb733b4528523f9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.445.0/lightdash-cli-3.445.0-macos-x64.tar.gz"
      sha256 "aa6e7614f6b7ca2ade785833f3b5db4cfa2023b996e80115cb5c6dca938fc4ec"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.445.0/lightdash-cli-3.445.0-linux-x64.tar.gz"
    sha256 "cf3b6257c2138a9765103276d2c57ce28fd0566fa49aca6df4092a80aa43999c"

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
