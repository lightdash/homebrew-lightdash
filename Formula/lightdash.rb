class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3170.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3170.1/lightdash-cli-0.3170.1-macos-arm64.tar.gz"
      sha256 "070b6dd526a3e04baf19d4d71ff573481fd055f72d083fd09d3e37f97e2ee544"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3170.1/lightdash-cli-0.3170.1-macos-x64.tar.gz"
      sha256 "0077d2cf348df15f637242dbe3232636d7c729e06e66d8d55e755c3397d50ed3"
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
