class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2360.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2360.0/lightdash-cli-0.2360.0-macos-arm64.tar.gz"
      sha256 "00a959a448caababce34772ba19e297799c618177fc7f00e0b0787a3e2b39b39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2360.0/lightdash-cli-0.2360.0-macos-x64.tar.gz"
      sha256 "424c010d21955ae726e5cc05d6674a3f21ab8b2d604224b32defb655dcf2f1ef"
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
