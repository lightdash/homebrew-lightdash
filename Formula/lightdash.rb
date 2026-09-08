class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.153.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.153.1/lightdash-cli-2.153.1-macos-arm64.tar.gz"
      sha256 "df8454a94cdf214b2b421422fb11de9373eed189c95428da1c6b9fde59a963a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.153.1/lightdash-cli-2.153.1-macos-x64.tar.gz"
      sha256 "e0f1284ab3075bd72eaa6f460c20672f6a38431f17bd91b0fcfee4bc1a040b44"
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
