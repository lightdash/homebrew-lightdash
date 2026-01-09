class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2320.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.0/lightdash-cli-0.2320.0-macos-arm64.tar.gz"
      sha256 "ad7ef5132aa8a09d5f4a2df3d744213631120169c1d65988aa259298eed86f05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.0/lightdash-cli-0.2320.0-macos-x64.tar.gz"
      sha256 "bae05ddd3b7dacf426907249461759f9d40fa82550487dd50ff00ef5b27483c5"
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
