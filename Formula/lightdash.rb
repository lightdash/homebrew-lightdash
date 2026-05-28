class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3038.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3038.0/lightdash-cli-0.3038.0-macos-arm64.tar.gz"
      sha256 "39f3e460758abf3e3301a01a245a4ad9944e6ca77d740a91d382f8e9953f37b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3038.0/lightdash-cli-0.3038.0-macos-x64.tar.gz"
      sha256 "c1258d52d846fba17840a32d06478cee153aac03ed8632f8f200350d057df934"
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
