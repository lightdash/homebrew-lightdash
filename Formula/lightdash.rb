class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3374.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3374.0/lightdash-cli-0.3374.0-macos-arm64.tar.gz"
      sha256 "9b16854740c8f607acd75bccf4a2c9db9fd98e7751960b097413e46bd50e6491"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3374.0/lightdash-cli-0.3374.0-macos-x64.tar.gz"
      sha256 "db0c730400d5d3b9e346863057a418ede7acbf547b8cd34e5d7148f1edf87c7d"
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
