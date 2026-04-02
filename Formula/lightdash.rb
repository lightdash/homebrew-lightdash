class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2710.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2710.1/lightdash-cli-0.2710.1-macos-arm64.tar.gz"
      sha256 "81491f34e4502b0ce5c310526924c8ad86b61a686358f9880e7469d961ff440f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2710.1/lightdash-cli-0.2710.1-macos-x64.tar.gz"
      sha256 "68caf8295b1e0584cf875cafefd52b078e030925e879a30a2061910dc0ca62d8"
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
