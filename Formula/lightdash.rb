class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.38.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.38.2/lightdash-cli-1.38.2-macos-arm64.tar.gz"
      sha256 "4190dc71be97d2137746e1234317bcf4d648261af23dc7300108becb0dc5b1fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.38.2/lightdash-cli-1.38.2-macos-x64.tar.gz"
      sha256 "590ed83e98a1aa6c450a07c2f64c63d95faa9489560a989ad2f41d22e205b7dc"
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
