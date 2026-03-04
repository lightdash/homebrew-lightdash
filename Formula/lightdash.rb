class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2562.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2562.0/lightdash-cli-0.2562.0-macos-arm64.tar.gz"
      sha256 "175a22683f1ca6e2361010a311b4e8a1ca20b01aa58286ef092cff4059a0c448"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2562.0/lightdash-cli-0.2562.0-macos-x64.tar.gz"
      sha256 "747846005d00e895ec9db7a98786775622f0439544f8c8c476610f9b119d3889"
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
