class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2342.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2342.0/lightdash-cli-0.2342.0-macos-arm64.tar.gz"
      sha256 "2246be10d1d1f8be13fd36c5c92e3aa1e12a08ca90c52537cca33d8c6c3017a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2342.0/lightdash-cli-0.2342.0-macos-x64.tar.gz"
      sha256 "dbbf684e58038b458562fed1d1bb2ee58101da610f2796b307607ba30eed98c4"
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
