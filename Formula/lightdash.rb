class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.557.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.557.1/lightdash-cli-2.557.1-macos-arm64.tar.gz"
      sha256 "cf79fb081db5af677fc0af2642b714b444b897b3284bc76b28f1ed250dedcac7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.557.1/lightdash-cli-2.557.1-macos-x64.tar.gz"
      sha256 "560dd0f673d492f822482888eb4f06f3f76b1802cdaf7186f59ddbd3cfeee4b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.557.1/lightdash-cli-2.557.1-linux-x64.tar.gz"
    sha256 "6ee9962a1937d9075fdf0bbd60fca1dc5a9da606630bc19581aea25d59777f53"

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
