class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3146.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3146.0/lightdash-cli-0.3146.0-macos-arm64.tar.gz"
      sha256 "193be196e15185251ad373bdd9a7ce05145074ca7948a47e87ccfa7b1367b085"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3146.0/lightdash-cli-0.3146.0-macos-x64.tar.gz"
      sha256 "708daf086c4707c0e4f725522b6cfd2137960b0b41e8f047d83695b7a74da05b"
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
