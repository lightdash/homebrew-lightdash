class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2345.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2345.0/lightdash-cli-0.2345.0-macos-arm64.tar.gz"
      sha256 "39de2e3290b113d28fac53687371c03764a6db1caf1e4d2bd727bc130c3d7d9d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2345.0/lightdash-cli-0.2345.0-macos-x64.tar.gz"
      sha256 "fbc35395b68686611111eb8dae86f7712d7ab0827394b2a10f162a2e848f5d8b"
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
