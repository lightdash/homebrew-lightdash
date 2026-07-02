class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3285.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3285.1/lightdash-cli-0.3285.1-macos-arm64.tar.gz"
      sha256 "fabf24bf3bcab20623a5437aa8564dcf94ea2d8fbdf5946bd58a6d9660d75ff3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3285.1/lightdash-cli-0.3285.1-macos-x64.tar.gz"
      sha256 "beaa56fbf03c2cc91bd4be6c4d08f2ae07856a0ad5c5c1de43e8c4907aefcc2e"
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
