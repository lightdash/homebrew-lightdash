class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2792.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2792.0/lightdash-cli-0.2792.0-macos-arm64.tar.gz"
      sha256 "7cced70c394b258336de67a2b4217f8ea813f8110f42435d3eb08b1d6cf26134"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2792.0/lightdash-cli-0.2792.0-macos-x64.tar.gz"
      sha256 "3c9e724414cd2084f7dbd3bf305ed8c11ba2f8d9bdd20f299d14c63efb7027be"
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
