class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2259.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.3/lightdash-cli-0.2259.3-macos-arm64.tar.gz"
      sha256 "b73606497c548a65f767675cc13c7900793627002c5291a9be71d83e6e7c9cdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.3/lightdash-cli-0.2259.3-macos-x64.tar.gz"
      sha256 "8451d7278106cd3f82d5ca7cf4f9ec6042731ac98765427d5330088addb88409"
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
