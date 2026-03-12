class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2614.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2614.2/lightdash-cli-0.2614.2-macos-arm64.tar.gz"
      sha256 "0b613fd1064167c944711e82ba285c2cfcd8027c107b30bbfee13bdc8f527cb0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2614.2/lightdash-cli-0.2614.2-macos-x64.tar.gz"
      sha256 "c4055984e77b78055ac769732ea72a9bade4ca59082a4ddb0a360270211a488c"
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
