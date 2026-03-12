class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2615.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.4/lightdash-cli-0.2615.4-macos-arm64.tar.gz"
      sha256 "a0de623f2d2577ef2ec7dd785b1ca75b7067e9b05a06bf6eebbce7637ae07989"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.4/lightdash-cli-0.2615.4-macos-x64.tar.gz"
      sha256 "2cd4f8ddc58afc033a3de8f4e1799fe227a6a2030af9c6a1d80c1ef1c88a3b7b"
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
