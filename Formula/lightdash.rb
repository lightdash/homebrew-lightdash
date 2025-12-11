class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2242.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2242.2/lightdash-cli-0.2242.2-macos-arm64.tar.gz"
      sha256 "b971cc0945bc1603a260b8f8ff23fb31cc10a021d8bedd4040268d14a605d019"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2242.2/lightdash-cli-0.2242.2-macos-x64.tar.gz"
      sha256 "f8cf0009f490f17154f7463d21bc535b70fe86517d2c7782b2a134b69b987358"
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
