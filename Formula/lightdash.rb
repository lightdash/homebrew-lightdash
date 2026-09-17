class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.249.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.249.0/lightdash-cli-2.249.0-macos-arm64.tar.gz"
      sha256 "f0f3d333fbacd68466e186c1f1560ae8631667afa71e4626bc342ed466d11ded"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.249.0/lightdash-cli-2.249.0-macos-x64.tar.gz"
      sha256 "bdc7be0b43c10055fdf8e9e3b539d4ec04ec70e7029dca59b95d16b4f328b5ef"
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
