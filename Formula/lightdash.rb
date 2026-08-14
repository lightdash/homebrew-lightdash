class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.1/lightdash-cli-1.157.1-macos-arm64.tar.gz"
      sha256 "c0df2b6152afe2bed6b75c78d326412c4f701355f580bdb23f2c38af37eb1b6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.1/lightdash-cli-1.157.1-macos-x64.tar.gz"
      sha256 "fac7af28ce88357e6a90d236d767f6e870ad41996430bfa9b0643bd6b4826057"
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
