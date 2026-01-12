class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2329.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2329.0/lightdash-cli-0.2329.0-macos-arm64.tar.gz"
      sha256 "ba10fd7b44979713d2c5b7258559ba6030fbdcf4fd0cb65258d79892e411806c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2329.0/lightdash-cli-0.2329.0-macos-x64.tar.gz"
      sha256 "c7343baaca5e7e805c0cff354d3c51081fea3877b6d962c64779c21fdbe26905"
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
