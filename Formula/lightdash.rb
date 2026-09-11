class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.2/lightdash-cli-2.198.2-macos-arm64.tar.gz"
      sha256 "c780ca26182397bc1e249d80e767537580fcc36968d6bf8ad925c35787469396"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.2/lightdash-cli-2.198.2-macos-x64.tar.gz"
      sha256 "47be59f6c857a2e3dafa3756892a6ce37d312885024d33aebcb8ae5b12c9f38d"
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
