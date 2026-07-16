class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3401.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3401.1/lightdash-cli-0.3401.1-macos-arm64.tar.gz"
      sha256 "52bc1a64ed9b1cff691b20e760a147c7cc3b55d1d3cf139672cba99999e5bb56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3401.1/lightdash-cli-0.3401.1-macos-x64.tar.gz"
      sha256 "d00e2c9363bba7f62b8a4261318b103da55a50799eaaca6c1b891fa44da5e4ba"
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
