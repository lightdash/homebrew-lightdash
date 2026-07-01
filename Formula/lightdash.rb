class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3283.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3283.1/lightdash-cli-0.3283.1-macos-arm64.tar.gz"
      sha256 "710dad9eaa42daa6befce568eca19e4c772e676c72c324e79950343aa58850f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3283.1/lightdash-cli-0.3283.1-macos-x64.tar.gz"
      sha256 "72cd56de418825db7226eae00d4497024d047cca042a12cefd98bef639bef04f"
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
