class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2299.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2299.1/lightdash-cli-0.2299.1-macos-arm64.tar.gz"
      sha256 "81e9cac61b5d8cf6c7ccdd18a93fb9b42840aad389f2123fe02685857844ca27"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2299.1/lightdash-cli-0.2299.1-macos-x64.tar.gz"
      sha256 "be05e18b612375ccf3f6ef96df675738a10d71c819fac3bda521c34573f71bed"
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
