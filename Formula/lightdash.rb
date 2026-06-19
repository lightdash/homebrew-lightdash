class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3198.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3198.0/lightdash-cli-0.3198.0-macos-arm64.tar.gz"
      sha256 "5525f67651bb17dfffd62dd338532023ddff55eeec749d7b105d4fa74da002da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3198.0/lightdash-cli-0.3198.0-macos-x64.tar.gz"
      sha256 "f575d883aad3b5e0a5bcabdc7a69a05a58a2f595e237603ee2bbf41b5ae52db4"
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
