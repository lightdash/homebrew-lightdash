class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.123.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.123.0/lightdash-cli-2.123.0-macos-arm64.tar.gz"
      sha256 "9f85bf78b876b5b93037411867cc32dc8d2b0af481490ef47385aaa77174e1c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.123.0/lightdash-cli-2.123.0-macos-x64.tar.gz"
      sha256 "df948050fe3ed8df559da47cff071828779e4c88625e756378e2793c143e15fa"
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
