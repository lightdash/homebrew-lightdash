class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.42.0/lightdash-cli-3.42.0-macos-arm64.tar.gz"
      sha256 "11e1b467ac544566045420c67e0399711f48ccc90aa361fd61cc6ea6a5933bb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.42.0/lightdash-cli-3.42.0-macos-x64.tar.gz"
      sha256 "5b6b5589507c48867549f8992717bc1ec50dca37c901e2cf728b0eebf8e8013a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.42.0/lightdash-cli-3.42.0-linux-x64.tar.gz"
    sha256 "762f65f2d399e244ba6a05da887bae6b29a88c250e1423bb61a8c01146694cac"

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
