class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.93.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.93.1/lightdash-cli-1.93.1-macos-arm64.tar.gz"
      sha256 "f3dc3e6fe716ca20bca9c75df50f31f566ec050e1643331e4a950670c2e73673"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.93.1/lightdash-cli-1.93.1-macos-x64.tar.gz"
      sha256 "504cfa3cfe435d999ceed57ac5cf13fa15267ff8d48fadcaa27571cdef8d0732"
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
