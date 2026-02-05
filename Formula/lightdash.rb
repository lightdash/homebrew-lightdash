class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2432.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2432.1/lightdash-cli-0.2432.1-macos-arm64.tar.gz"
      sha256 "35978d417e56a7f4f3d54e92d39966db3a32e9b17f3ada46e5c462ec6646b032"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2432.1/lightdash-cli-0.2432.1-macos-x64.tar.gz"
      sha256 "adf2cb093764499435661b90f3420762dcfde696122c9a2acb5ca45294eb309b"
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
