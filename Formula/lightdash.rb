class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.258.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.3/lightdash-cli-1.258.3-macos-arm64.tar.gz"
      sha256 "0c7de6409b295323f21a6614ab7fd9237e2a8d3713cdab2848abf836422ce475"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.3/lightdash-cli-1.258.3-macos-x64.tar.gz"
      sha256 "22fbd9290b990e0061b93c587c2acf8dbc8a65b731b77838d6a9a295f4c86f5e"
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
