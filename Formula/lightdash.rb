class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2644.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2644.1/lightdash-cli-0.2644.1-macos-arm64.tar.gz"
      sha256 "737258d5758696e306604801e3305a05bed7a5096d8bcc283301141f33499708"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2644.1/lightdash-cli-0.2644.1-macos-x64.tar.gz"
      sha256 "fedc4b891eff73c7d9eb173042554dbebcba2248d97dcbb541d490244ce94709"
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
