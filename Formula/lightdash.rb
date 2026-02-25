class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2523.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.4/lightdash-cli-0.2523.4-macos-arm64.tar.gz"
      sha256 "6b9a90a51d80cba748e9ca7ab263e3d5429df54563914aac6678c34b944cc627"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.4/lightdash-cli-0.2523.4-macos-x64.tar.gz"
      sha256 "b486a3c4bb24246225c36a26931914193e5554ad17c1fc0b1cd4a92b9e221c48"
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
