class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.250.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.250.1/lightdash-cli-2.250.1-macos-arm64.tar.gz"
      sha256 "195b871f15182425508f6ac35564615efd68ad864c382f9894053caae475c8db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.250.1/lightdash-cli-2.250.1-macos-x64.tar.gz"
      sha256 "1eb3ebfa3fd86c5cb0d4ec05415e651afb9bc336d30e5f5f74f06fce37adc9f4"
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
