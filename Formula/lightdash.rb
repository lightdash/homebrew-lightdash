class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3134.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3134.0/lightdash-cli-0.3134.0-macos-arm64.tar.gz"
      sha256 "dc3578cecf4540c218e7e0032a4d8012cb640ad2bad3772234e0f1367cca1e25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3134.0/lightdash-cli-0.3134.0-macos-x64.tar.gz"
      sha256 "90295b0b77b1e0c380eb371cf1feac3b2c50f9e8df9b22932ecdd26fa0b43ce9"
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
