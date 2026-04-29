class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2840.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2840.0/lightdash-cli-0.2840.0-macos-arm64.tar.gz"
      sha256 "c51b669793ef539f789f1d492102c42b616f1ea5bcce02fd6ec490d25bee6baa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2840.0/lightdash-cli-0.2840.0-macos-x64.tar.gz"
      sha256 "d47b92bca3f9ba662da960457491d90039d1e78e1dd4a9f7026c752a205ec3c9"
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
