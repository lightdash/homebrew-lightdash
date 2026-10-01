class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.6/lightdash-cli-2.405.6-macos-arm64.tar.gz"
      sha256 "07b8f153991fc7dc2f885d6ba9fd3a75e6e4b78136fbe226809da5ae46285564"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.6/lightdash-cli-2.405.6-macos-x64.tar.gz"
      sha256 "e9a371b36b0c7c0ab3663e931ce10cf15ef8fa93786610639e1ee71f56544862"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.6/lightdash-cli-2.405.6-linux-x64.tar.gz"
    sha256 "1eaadb49b55a25406838469f068b1008b11b3fdd711064ac5ded3f1eea354cf7"

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
