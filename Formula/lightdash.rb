class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.1/lightdash-cli-1.159.1-macos-arm64.tar.gz"
      sha256 "ede8fc656000eaa6bcbe93118fdb8692f813176d0e2ded48bb9140d527ad00a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.1/lightdash-cli-1.159.1-macos-x64.tar.gz"
      sha256 "9012476de0ed64b06864d24752f72ba3efd141f749512cd26a01cb13a579076f"
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
