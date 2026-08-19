class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.3/lightdash-cli-1.202.3-macos-arm64.tar.gz"
      sha256 "a35afba2024db414a7f5b51e5b7543a75224af1a91c0e09ae206c5531eb63bec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.3/lightdash-cli-1.202.3-macos-x64.tar.gz"
      sha256 "45015468acb1528576dffcc8e54c6950cd7e529f4e246363a53ca04013118fbb"
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
