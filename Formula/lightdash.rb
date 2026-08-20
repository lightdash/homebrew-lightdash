class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.211.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.211.2/lightdash-cli-1.211.2-macos-arm64.tar.gz"
      sha256 "b96bdbcc7114c3243ae4f1bbdeab2bea45a291c8dde7f76ce59ed0fda25add68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.211.2/lightdash-cli-1.211.2-macos-x64.tar.gz"
      sha256 "b7aad84f60ae9f49239e08bd136ac8ef40d9e8392455664b1c756c4fe3d84e35"
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
