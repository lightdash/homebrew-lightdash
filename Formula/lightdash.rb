class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2634.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2634.1/lightdash-cli-0.2634.1-macos-arm64.tar.gz"
      sha256 "286072fb9600c41e676935f61d654a14af878a281228e4aeb426dcb8822b6074"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2634.1/lightdash-cli-0.2634.1-macos-x64.tar.gz"
      sha256 "2883e2576977c8bda71f59518b65bd68ed8a98dbcd77155f4d4ae3052148af66"
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
