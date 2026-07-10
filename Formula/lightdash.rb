class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3363.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3363.1/lightdash-cli-0.3363.1-macos-arm64.tar.gz"
      sha256 "6b07da4e108d2dd1441ed3f19abc8c412078b604b214005a8ece6af98a3f434d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3363.1/lightdash-cli-0.3363.1-macos-x64.tar.gz"
      sha256 "d9e043e7d1ee4e00da275b194fbc3217e1c2ef8e6ef130e9cf52be364f836249"
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
