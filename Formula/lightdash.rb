class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.391.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.391.0/lightdash-cli-3.391.0-macos-arm64.tar.gz"
      sha256 "1d8602fa61952eb6c2e05ff0193353d283c5c2b90e7fd9c6fa1cef1a02285418"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.391.0/lightdash-cli-3.391.0-macos-x64.tar.gz"
      sha256 "43451823625e4ff0c2a99cd8f50dd235fc69e4d22358f3e828e00e00c0d2f460"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.391.0/lightdash-cli-3.391.0-linux-x64.tar.gz"
    sha256 "762616a5ae16679901f78b8749a5d6ee0d65997f0ea52064d5d1e2031cf46010"

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
