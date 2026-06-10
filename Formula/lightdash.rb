class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3126.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3126.2/lightdash-cli-0.3126.2-macos-arm64.tar.gz"
      sha256 "40ba7f61cc117b7225749556413b3f25b9cd83c3241098e27535b476f987bf13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3126.2/lightdash-cli-0.3126.2-macos-x64.tar.gz"
      sha256 "a87150636ac7c324e26aa11903430102951ab011101dffbc280a74df938202de"
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
