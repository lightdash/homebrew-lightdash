class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.6/lightdash-cli-0.2709.6-macos-arm64.tar.gz"
      sha256 "e1761bd2f2b261a3b428b08a6ec9894c2c6c1549398c56ec276707686b07111d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.6/lightdash-cli-0.2709.6-macos-x64.tar.gz"
      sha256 "6f843bec42ff8746a9dd1d304b4e02e6a8c82dbe8c9e4d1fd13276846b41d3a2"
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
