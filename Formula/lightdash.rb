class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.80.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.80.0/lightdash-cli-3.80.0-macos-arm64.tar.gz"
      sha256 "a5e650e0a78087cec069e83911bb2993996b8d4659af343f7dec5c7d4b1f328d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.80.0/lightdash-cli-3.80.0-macos-x64.tar.gz"
      sha256 "d8b49e72dfd8cab6e6b3dbc227499ce1bf99fb1f36e552b71ba55690f57787ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.80.0/lightdash-cli-3.80.0-linux-x64.tar.gz"
    sha256 "f07aac5c320692fbcf235b13c1c1684272c8db6f078b57a78036e308a90aa2ea"

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
