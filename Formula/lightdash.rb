class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2209.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.2/lightdash-cli-0.2209.2-macos-arm64.tar.gz"
      sha256 "c5c87a521253d05c9e961fc8a75238dd95ac3464fc9b48adcf703139871a7a6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.2/lightdash-cli-0.2209.2-macos-x64.tar.gz"
      sha256 "df729b8af3bc81c12a3dae811c86543f55865420b7e75a5805195ba57c2f98fa"
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
