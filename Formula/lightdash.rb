class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.69.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.69.0/lightdash-cli-2.69.0-macos-arm64.tar.gz"
      sha256 "842bed31554ea84ae0b865cdee5afcbedb1913cf89b93fd6418c2a33bdcaf349"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.69.0/lightdash-cli-2.69.0-macos-x64.tar.gz"
      sha256 "47321e76c5d6723e84e1866a83066de0164d4a0dcd64bf84718d5aa7bef9c370"
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
