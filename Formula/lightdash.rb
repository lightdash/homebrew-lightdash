class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.358.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.358.1/lightdash-cli-2.358.1-macos-arm64.tar.gz"
      sha256 "3f2293e95257a482b2d18830eafb16e254580d10497597ea0d2193811847c571"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.358.1/lightdash-cli-2.358.1-macos-x64.tar.gz"
      sha256 "eba94abd84c316e844147b2833a4859b6f7a5205af1ce20ae38a6a01f2ee2a09"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.358.1/lightdash-cli-2.358.1-linux-x64.tar.gz"
    sha256 "5026bd9ecf03260f36cf9871e0dc8fbf60ffc167f94829937b138e1785072fda"

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
