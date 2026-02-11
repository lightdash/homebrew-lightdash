class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2453.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2453.1/lightdash-cli-0.2453.1-macos-arm64.tar.gz"
      sha256 "a3f240930b14dea325348b608dc2b5e95b6494a235f15e4776fe89a2230643f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2453.1/lightdash-cli-0.2453.1-macos-x64.tar.gz"
      sha256 "5c905b3f4f1061711ca5e38d022ac43e22b95eb15cad95f27722388a8a58ed0c"
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
