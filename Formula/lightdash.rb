class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3149.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3149.0/lightdash-cli-0.3149.0-macos-arm64.tar.gz"
      sha256 "ca084bc634245dc760d4571b6faa5e72cbd6509d3a40e9a3a93d1034c59389d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3149.0/lightdash-cli-0.3149.0-macos-x64.tar.gz"
      sha256 "4f0cdab194d73633b63111ebc389477e88886c155d695a8b7827144720305a01"
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
