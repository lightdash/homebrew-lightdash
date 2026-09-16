class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.242.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.2/lightdash-cli-2.242.2-macos-arm64.tar.gz"
      sha256 "c143529a737390b1202de1fea162c4a1ac135b7137478a94c9b74a4668e89d0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.2/lightdash-cli-2.242.2-macos-x64.tar.gz"
      sha256 "18313554d764849c8b1b0db45f879ecb5d39517035033d019e309b6eccae8081"
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
