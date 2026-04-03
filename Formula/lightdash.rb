class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2721.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2721.1/lightdash-cli-0.2721.1-macos-arm64.tar.gz"
      sha256 "a8d2acf6742ba039f8c84fa5081e4b021cfb8d79d53ce1835b018a60e36ba19e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2721.1/lightdash-cli-0.2721.1-macos-x64.tar.gz"
      sha256 "e649dd2af0f88b504602aa101494231b9278726acafe6abe7661592bad3e1d65"
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
