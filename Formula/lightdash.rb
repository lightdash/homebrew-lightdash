class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.213.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.213.0/lightdash-cli-1.213.0-macos-arm64.tar.gz"
      sha256 "1c54f78f26ceec122805cc49264d753a614eb538b2e43fac573f8a3641b4e40b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.213.0/lightdash-cli-1.213.0-macos-x64.tar.gz"
      sha256 "8b91bb7e0dfd9a8df8034cf62bf865f2608cfe080c32cf9bc75ae2d35d2415fc"
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
