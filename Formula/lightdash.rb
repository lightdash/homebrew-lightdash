class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2214.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.4/lightdash-cli-0.2214.4-macos-arm64.tar.gz"
      sha256 "3bf5703c8117158f093d80aa4154f4d938b5752eb92692ff68f6e266662b82c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.4/lightdash-cli-0.2214.4-macos-x64.tar.gz"
      sha256 "156b024281e5ad10ea943aef1c0876c744c34ae622b3c97501fad2fe6ec9521a"
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
