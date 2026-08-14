class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.3/lightdash-cli-1.159.3-macos-arm64.tar.gz"
      sha256 "55094a8b63d411bca481c2c022d1360aa6d5bce3534465a201558832851a9160"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.3/lightdash-cli-1.159.3-macos-x64.tar.gz"
      sha256 "5d6775bd51afc4c883af4afad3554c56d5e4582692a70b5ffdf5aa01b46afb11"
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
