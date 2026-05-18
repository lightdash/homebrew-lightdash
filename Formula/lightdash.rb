class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2970.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2970.0/lightdash-cli-0.2970.0-macos-arm64.tar.gz"
      sha256 "b19a436cb564e636970e6ed49b73acb0d9de3638fec37673b817dcbb27c6a896"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2970.0/lightdash-cli-0.2970.0-macos-x64.tar.gz"
      sha256 "07b8a173d004aed0344039650d8766abe1e1255436c98d379957afbb15cb2c36"
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
