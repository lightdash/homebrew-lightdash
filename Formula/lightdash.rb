class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3122.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3122.1/lightdash-cli-0.3122.1-macos-arm64.tar.gz"
      sha256 "f572740337be7a0f810c7a69f586626d5ddca5871f8ad2b1770baca5e317a1dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3122.1/lightdash-cli-0.3122.1-macos-x64.tar.gz"
      sha256 "f9b28f33e563661280b004dce219c81c46abef575be0c4d2bee18c5e0b61afe6"
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
