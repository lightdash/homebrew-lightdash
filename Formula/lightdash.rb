class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.221.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.221.1/lightdash-cli-2.221.1-macos-arm64.tar.gz"
      sha256 "4c379ed1a098c85cc4d7a698097ed8a4e1256cb315406991419d98a3628da253"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.221.1/lightdash-cli-2.221.1-macos-x64.tar.gz"
      sha256 "c72e67fdd2bd84ea6f4cf26c636508c9d236412bc973f254ba46878d333f3f71"
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
