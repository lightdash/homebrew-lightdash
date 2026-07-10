class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3355.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3355.0/lightdash-cli-0.3355.0-macos-arm64.tar.gz"
      sha256 "09520cd99f103c1c13e1e127ad68a8196e320b1ddfdccd3bac381f14c0bd4cac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3355.0/lightdash-cli-0.3355.0-macos-x64.tar.gz"
      sha256 "d834e2809845f382a0453fdb3cee1269726a16ebaef48c0f1c6930bf7a4d9699"
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
