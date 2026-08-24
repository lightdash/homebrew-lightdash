class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.243.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.243.2/lightdash-cli-1.243.2-macos-arm64.tar.gz"
      sha256 "d31cdec5bb7692f9237efd78b576c8f7fac53db80c4dd14eee7e08ae0d212426"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.243.2/lightdash-cli-1.243.2-macos-x64.tar.gz"
      sha256 "34103b900db981a96bebc58c5287d0eaf94e4835e6c90a38b99396e75b3ae68e"
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
