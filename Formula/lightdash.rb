class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.2/lightdash-cli-1.242.2-macos-arm64.tar.gz"
      sha256 "927bce1e32dae47e9df751c0287842c90e328af4b297f9208023a46033a29887"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.2/lightdash-cli-1.242.2-macos-x64.tar.gz"
      sha256 "08feddddf0a62c4b477bee48a548a9fd83b22e95fa917f214ff58ec9eced4cf3"
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
