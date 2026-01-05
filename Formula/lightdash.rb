class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2295.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2295.2/lightdash-cli-0.2295.2-macos-arm64.tar.gz"
      sha256 "b066356c639763144a693c440dba6666517c49f2156d277b2142a0b89a26a682"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2295.2/lightdash-cli-0.2295.2-macos-x64.tar.gz"
      sha256 "67fa7ef88f4332fcb1db1cbfaface49e73ddda3b81c8058aeadd7324af5fa7dc"
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
