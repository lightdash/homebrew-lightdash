class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3335.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3335.0/lightdash-cli-0.3335.0-macos-arm64.tar.gz"
      sha256 "7343a1672702377b34c0c4158d89820107f9a1f6e10153ab6b6b60c154d0958b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3335.0/lightdash-cli-0.3335.0-macos-x64.tar.gz"
      sha256 "c337d0988c5912424d9ae7fd52b5f6790f81fcd3759f73464aac16c1966ef5f8"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
