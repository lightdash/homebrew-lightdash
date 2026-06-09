class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3114.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3114.0/lightdash-cli-0.3114.0-macos-arm64.tar.gz"
      sha256 "7d020d3aad98ad1c31d1013cf67c21dca87883873efb0db4997a00edc42108c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3114.0/lightdash-cli-0.3114.0-macos-x64.tar.gz"
      sha256 "d653a89af9086f27e3669b694590bd74f62ad260d489f31b7ce9197eacb0c42e"
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
