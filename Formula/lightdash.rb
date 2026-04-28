class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2822.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2822.0/lightdash-cli-0.2822.0-macos-arm64.tar.gz"
      sha256 "150355d5e8079bb23ee16d47de949120c79102b352cd317278aec4d6c0d0ec4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2822.0/lightdash-cli-0.2822.0-macos-x64.tar.gz"
      sha256 "f669990ce7414a61b3863dfb5bb2991c9b13befa12a7f75a23b33808d207da5c"
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
