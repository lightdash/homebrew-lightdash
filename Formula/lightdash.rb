class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.186.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.3/lightdash-cli-2.186.3-macos-arm64.tar.gz"
      sha256 "a41b32a1ba65241af2503f3bc762abf68796ae239a53f96577f600d17989951b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.3/lightdash-cli-2.186.3-macos-x64.tar.gz"
      sha256 "6034bdf4ba953059cdb73b3819ec56a516d258175f562d2cedcefd4f05caafd1"
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
