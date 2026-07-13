class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3370.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3370.0/lightdash-cli-0.3370.0-macos-arm64.tar.gz"
      sha256 "218548379a2b1fd30e845fa272313239184f2c8033f3c0da759ca2781b5d90c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3370.0/lightdash-cli-0.3370.0-macos-x64.tar.gz"
      sha256 "e48b14f8cc1d1333281e59a3bc7d0cbfbeed7cd142e409e888ce22a1c3d12c0c"
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
