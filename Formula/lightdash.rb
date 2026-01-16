class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2347.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2347.1/lightdash-cli-0.2347.1-macos-arm64.tar.gz"
      sha256 "f27da2dbf34ef38c75401f82052e9bb3ae0cac8f05e477e58a200d3ea9bdbff7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2347.1/lightdash-cli-0.2347.1-macos-x64.tar.gz"
      sha256 "c71de655e181dc686014787be6f2f6b17b731d10dc709cec7024e507cba45786"
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
