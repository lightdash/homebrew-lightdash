class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.212.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.212.1/lightdash-cli-2.212.1-macos-arm64.tar.gz"
      sha256 "380c1ab64e171d725e7db05b920fa6ede2bb61c4540bf87e9ece5bf0a47e7bb9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.212.1/lightdash-cli-2.212.1-macos-x64.tar.gz"
      sha256 "79170a8c71f9a35a9785d40d22f051a537af0a8bbe077b2928486d3403f941ba"
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
