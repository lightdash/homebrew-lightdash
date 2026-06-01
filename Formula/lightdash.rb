class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3064.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3064.0/lightdash-cli-0.3064.0-macos-arm64.tar.gz"
      sha256 "cb422e485266df39f73b0839c54ea6f3a21f8ba16fc1a6f517f89f675defbe4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3064.0/lightdash-cli-0.3064.0-macos-x64.tar.gz"
      sha256 "7412a6ab6ba6896d521d5bc2806578beaa722435c99d958f0287bc1beb559be5"
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
