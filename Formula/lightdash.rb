class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.186.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.0/lightdash-cli-2.186.0-macos-arm64.tar.gz"
      sha256 "931e376961c42b6b6a93d8ceebae0f1db0143a5e1c5aeb0cbf186ef1272b81dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.0/lightdash-cli-2.186.0-macos-x64.tar.gz"
      sha256 "501d423bb6f73fcca4385470b868bb24eb6c08c16e00cfc281cd15d6ac004e9a"
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
