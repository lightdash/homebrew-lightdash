class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3429.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3429.0/lightdash-cli-0.3429.0-macos-arm64.tar.gz"
      sha256 "a122df2e193876305cc4bb5cf900f2265911dcd964e6692bc0ca2100343cb1a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3429.0/lightdash-cli-0.3429.0-macos-x64.tar.gz"
      sha256 "a55f69e56937892a940d20e84ccf03238228fc00ffbe6fb4beae4e66357279db"
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
