class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.42.1/lightdash-cli-2.42.1-macos-arm64.tar.gz"
      sha256 "2f1b6daffd0cd15d78d123f42539159948ec2b9ec3027fc652f49f6fa101c97f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.42.1/lightdash-cli-2.42.1-macos-x64.tar.gz"
      sha256 "df75ae22d8ca419037cc0d696932a6a69ecb979e27e32a91388d346a7c096ca5"
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
