class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.85.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.85.0/lightdash-cli-1.85.0-macos-arm64.tar.gz"
      sha256 "0cd2f861710b6ba86bafbf6167510231375e98b45bddfe90708060620fcc2b93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.85.0/lightdash-cli-1.85.0-macos-x64.tar.gz"
      sha256 "453ab60ca72101207e1d6c8fd4aeac0a52584fb423c369aab14c89ba8b681307"
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
