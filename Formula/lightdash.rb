class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2229.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2229.0/lightdash-cli-0.2229.0-macos-arm64.tar.gz"
      sha256 "9ab069ba5ae4d25c14f59eec8c1d09b1d5e99699f5e59f271f785234e6060065"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2229.0/lightdash-cli-0.2229.0-macos-x64.tar.gz"
      sha256 "e77b33756bbbe87849b04302d4d5cce9b9f32a051e1af1345e4751c792f71683"
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
