class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.248.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.248.0/lightdash-cli-1.248.0-macos-arm64.tar.gz"
      sha256 "8384dab3c07efc9e585235d98839acd5f26f59da7fce7d6b5e7f1e585632cf79"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.248.0/lightdash-cli-1.248.0-macos-x64.tar.gz"
      sha256 "b4fdbcf47da5ac3e08825ad822ce9d202234e848a2971b5fb5deb6710a96b4c4"
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
