class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2317.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2317.0/lightdash-cli-0.2317.0-macos-arm64.tar.gz"
      sha256 "f7c5e44e3538e541856b24a4c753acc0ec5a8cb4e7d815992e09c5db552b85f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2317.0/lightdash-cli-0.2317.0-macos-x64.tar.gz"
      sha256 "f58a06da751cb9779421a7a7e7d40c68af49e2ec56fe1aa3c2004a0556322cdf"
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
