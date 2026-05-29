class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3053.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3053.1/lightdash-cli-0.3053.1-macos-arm64.tar.gz"
      sha256 "ee52a4a5945b0334d1af0181e5397addcb6d60d25006217817400a75f5b98d0d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3053.1/lightdash-cli-0.3053.1-macos-x64.tar.gz"
      sha256 "e79b9a6722fdd2dac6546ad426a3340bc1e68b7651ff76d453c2682d05ec8b87"
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
