class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3092.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3092.1/lightdash-cli-0.3092.1-macos-arm64.tar.gz"
      sha256 "d8338bf867ecc58abcdf18acf5479b756ddda8e4e2e8d2d684be090064502adc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3092.1/lightdash-cli-0.3092.1-macos-x64.tar.gz"
      sha256 "9d2462ceb81eb8ee3a971c4794a414811f2228d92276fd8bee5d19eee9ea665f"
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
