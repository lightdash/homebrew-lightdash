class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2861.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2861.1/lightdash-cli-0.2861.1-macos-arm64.tar.gz"
      sha256 "1c458a94113a1d0047f319a45b363e395218c27abb9ab1dd93ca5e67a72b71b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2861.1/lightdash-cli-0.2861.1-macos-x64.tar.gz"
      sha256 "979b1270444419a17c0334992cf421093729f1fca5540d9fb46db4f9695f4fea"
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
