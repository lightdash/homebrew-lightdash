class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.100.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.100.1/lightdash-cli-1.100.1-macos-arm64.tar.gz"
      sha256 "51e5a208673aa887566fc7f3d01a713b7973636f9b4aaa8725deb0c87e001ba8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.100.1/lightdash-cli-1.100.1-macos-x64.tar.gz"
      sha256 "30131504ba5b00a91bbb3e16296d98bb161a475ee29dd45a50f6a353cba54d64"
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
