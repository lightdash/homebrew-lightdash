class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2290.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.2/lightdash-cli-0.2290.2-macos-arm64.tar.gz"
      sha256 "992cfc688648aa4d54a7d0c05f7200537d4545ad7325175d546da8910ec63089"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.2/lightdash-cli-0.2290.2-macos-x64.tar.gz"
      sha256 "10f033dcb936abad268faf8151e925d90a2a3b12e827103ec3e75426ef63d9c0"
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
