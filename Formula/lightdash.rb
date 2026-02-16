class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2469.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2469.1/lightdash-cli-0.2469.1-macos-arm64.tar.gz"
      sha256 "5cf85264e933dc8d511fbdf567752c67cf75c6a4a6400ee41080d2d877bc0ec7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2469.1/lightdash-cli-0.2469.1-macos-x64.tar.gz"
      sha256 "92c810abed68cfb7326ab9139b01d8fe76633fbba78ab4af5080fe3cc1185f23"
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
