class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2859.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2859.0/lightdash-cli-0.2859.0-macos-arm64.tar.gz"
      sha256 "1409fc4381fc9acaea65fc0d771572d1209a94a6f894b57e3894e1ca7d3b9878"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2859.0/lightdash-cli-0.2859.0-macos-x64.tar.gz"
      sha256 "690ded14470977d063a634c108dbc93f14e87ecee2a200a3b9fa22eef59c3302"
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
