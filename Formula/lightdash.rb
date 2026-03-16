class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2620.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2620.1/lightdash-cli-0.2620.1-macos-arm64.tar.gz"
      sha256 "4a5a5e701c1e711ca53f14463a10c80d2c89fa6f8179c9c62eff808f9e061bef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2620.1/lightdash-cli-0.2620.1-macos-x64.tar.gz"
      sha256 "83cb8696918f8c075973c67035e0390073d8a58b9a756fa78fe4426767f49787"
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
