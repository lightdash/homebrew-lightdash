class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.51.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.51.1/lightdash-cli-1.51.1-macos-arm64.tar.gz"
      sha256 "1629fb29b900b28714f4891cc17bd78cafb2002623f2dda8bb0e0529c6a73a08"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.51.1/lightdash-cli-1.51.1-macos-x64.tar.gz"
      sha256 "7da0bb9d9b0d732e77c04354d0b5b703f2a94e42577909cf59e830737ccb1afb"
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
