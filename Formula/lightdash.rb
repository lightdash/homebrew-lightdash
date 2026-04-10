class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2746.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.1/lightdash-cli-0.2746.1-macos-arm64.tar.gz"
      sha256 "63c8e03cae9c03700b46046785209c81b52a95d70b5bf9d2a8fdf7dc58c2e4d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.1/lightdash-cli-0.2746.1-macos-x64.tar.gz"
      sha256 "c82e6d606ac6e846695972ed0229c8188bc97e1b88e28572df08c8c933987d31"
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
