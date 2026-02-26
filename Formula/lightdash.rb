class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2527.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2527.2/lightdash-cli-0.2527.2-macos-arm64.tar.gz"
      sha256 "550f15729a8476a4b9f5220cd6d557779a30abdb18c7330313c9ccac8a4de089"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2527.2/lightdash-cli-0.2527.2-macos-x64.tar.gz"
      sha256 "01a4c793f6157606dab02ee3c89c00d114a2308f240d05c73d7be821ff96a6b3"
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
