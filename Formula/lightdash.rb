class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2836.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2836.2/lightdash-cli-0.2836.2-macos-arm64.tar.gz"
      sha256 "e59b68a3fc75583c627ec64969f09b49eff4ce1cc916c8bfe35132ad59e1281c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2836.2/lightdash-cli-0.2836.2-macos-x64.tar.gz"
      sha256 "ca66cb70012d9ce2015e8731f7301acd6af22475217493e723756e0ff872af5d"
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
