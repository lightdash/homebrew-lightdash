class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.197.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.197.0/lightdash-cli-1.197.0-macos-arm64.tar.gz"
      sha256 "849b6402c75e685a3d99ea37d1ff977db973733907362743e18010161b3c1b3d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.197.0/lightdash-cli-1.197.0-macos-x64.tar.gz"
      sha256 "d7b7c8ba045c144bc5bf272e2f80e749514ef0d376cc5f9003895fe4d893e417"
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
