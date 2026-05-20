class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2996.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2996.0/lightdash-cli-0.2996.0-macos-arm64.tar.gz"
      sha256 "17628c86553b5645c509cecc42cdaaaa4fc46dea229d98a079810e2233643993"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2996.0/lightdash-cli-0.2996.0-macos-x64.tar.gz"
      sha256 "0e892735a551f018df24be874c24a372d68e9102e4a7647b7901a01f15b0548f"
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
