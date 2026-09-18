class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.259.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.3/lightdash-cli-2.259.3-macos-arm64.tar.gz"
      sha256 "774302c9be1b7a104648835ad88ee739597c5eb234e064bd927b58c91f1b043f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.3/lightdash-cli-2.259.3-macos-x64.tar.gz"
      sha256 "318eb44eceb8e6ff42d006b6a343e1e59a5f8f8d02e01ed5b19ff453fdc5722c"
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
