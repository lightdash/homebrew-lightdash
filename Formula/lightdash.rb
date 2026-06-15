class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3162.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.0/lightdash-cli-0.3162.0-macos-arm64.tar.gz"
      sha256 "755197be0b1da619e59b71ff1bc9e4a2db7d0d83bea40dc576b56a9fcc26b5f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.0/lightdash-cli-0.3162.0-macos-x64.tar.gz"
      sha256 "2c59a30fa3732f529e82bdf28ee4c5aa2d5a1043276755f0580c8b0dd4bec412"
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
