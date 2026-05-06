class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2881.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.2/lightdash-cli-0.2881.2-macos-arm64.tar.gz"
      sha256 "4125e5cf8dd8228affc1cffc08004c2aa3ca7dd82a1576ec0cbfb2be8bf54767"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.2/lightdash-cli-0.2881.2-macos-x64.tar.gz"
      sha256 "b6d10d642f50363fac6ca3db8bedb7de81d3153a34c30df5035b99c3e3ab0ce6"
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
