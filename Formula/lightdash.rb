class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.2/lightdash-cli-0.2357.2-macos-arm64.tar.gz"
      sha256 "1644f9d7c13063a994ed688b3afc499f65a1a1854d3dd00389fbab33b18f1da5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.2/lightdash-cli-0.2357.2-macos-x64.tar.gz"
      sha256 "23fac3bc6ae613b4ebd1fb4213489344346a6d090ee6f92054843f2f364560f7"
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
