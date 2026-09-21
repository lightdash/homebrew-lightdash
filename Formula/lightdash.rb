class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.5/lightdash-cli-2.286.5-macos-arm64.tar.gz"
      sha256 "4aa6667ce409cd2127cc0f53a550a58ba1e603f91d09f4413637915b568fbafd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.5/lightdash-cli-2.286.5-macos-x64.tar.gz"
      sha256 "d124ea2d3cc2f1d68c3d48a5001710e57333dab6749d768303ed40fc6ef13856"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.5/lightdash-cli-2.286.5-linux-x64.tar.gz"
      sha256 "a29b6c9ba0099cf2d8502b6a73ee2672c7bc6fd1fa19aa5f966374b29369c893"
    end
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
