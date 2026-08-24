class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.7/lightdash-cli-1.251.7-macos-arm64.tar.gz"
      sha256 "a98407b473d0de2d79041fe98cc4d40358379e126c2b4958bd1206125eab3fbb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.7/lightdash-cli-1.251.7-macos-x64.tar.gz"
      sha256 "375e9bc6c75c9fc61e20de40739980a0410d79d0ec6adfbfbe80a391a1690463"
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
