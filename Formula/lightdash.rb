class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.1.1/lightdash-cli-1.1.1-macos-arm64.tar.gz"
      sha256 "767359e8ab1b1e5f3ba47a929a990cb60dee9aef66051806e88fedba62c0b7af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.1.1/lightdash-cli-1.1.1-macos-x64.tar.gz"
      sha256 "f268653554591d5f476a3931af20fb0adf3cc707c28f57b3094fd69df5f35e47"
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
