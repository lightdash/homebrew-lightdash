class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3165.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.3/lightdash-cli-0.3165.3-macos-arm64.tar.gz"
      sha256 "ffce3fc2e053ad4b3dc548f7c783b79aaa45131327cf6f98a25375234548b7cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.3/lightdash-cli-0.3165.3-macos-x64.tar.gz"
      sha256 "b99c176f679181783ac75327eba26543e675dfec21170f38f07629e17d57a79a"
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
