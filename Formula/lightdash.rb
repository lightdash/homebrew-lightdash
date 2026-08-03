class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.70.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.70.0/lightdash-cli-1.70.0-macos-arm64.tar.gz"
      sha256 "bb9d74ebad094c50be660cff4678f0ed2e3a0cdd5a742960e4af3242e4a2e856"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.70.0/lightdash-cli-1.70.0-macos-x64.tar.gz"
      sha256 "84780bf3317dadd3fd3efccd19680ca86e5a8e2f010636ad638946626b338e82"
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
