class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2365.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.1/lightdash-cli-0.2365.1-macos-arm64.tar.gz"
      sha256 "6eca6bacb2d8d9c33c4ca42ae1317602e9d8356ee467a005383d2b17532385d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.1/lightdash-cli-0.2365.1-macos-x64.tar.gz"
      sha256 "80ff9e75e6d01189b5dd1069696a337f88787d08309dbd5afca3ed1bbc1061b6"
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
