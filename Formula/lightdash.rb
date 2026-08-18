class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.191.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.191.2/lightdash-cli-1.191.2-macos-arm64.tar.gz"
      sha256 "d7299790e1d4ffd8dd38acfa4db7530700ead3633a1eafc37d0c608ce996f18f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.191.2/lightdash-cli-1.191.2-macos-x64.tar.gz"
      sha256 "5beb5f173e108ec3afc0222ab379146bb61dadf5b30a16e399e854485022e81a"
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
