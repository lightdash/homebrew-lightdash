class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.194.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.194.1/lightdash-cli-2.194.1-macos-arm64.tar.gz"
      sha256 "b83ff239fae7f51601c88bf639a0676f3a5ab7d362845d770b3f5b7fb82f8219"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.194.1/lightdash-cli-2.194.1-macos-x64.tar.gz"
      sha256 "e8ce710d9d6a88c963139c3a519070eafd84a2154b99f7b720186af27f4b9a55"
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
