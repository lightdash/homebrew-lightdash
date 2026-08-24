class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.252.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.252.0/lightdash-cli-1.252.0-macos-arm64.tar.gz"
      sha256 "274729b4c4c7906db7884c7df042a639a4be07e2aa67ffa3b5fd4f0088db7dc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.252.0/lightdash-cli-1.252.0-macos-x64.tar.gz"
      sha256 "9c665a1131ec22d07e857e005f0cfa791a96c12962056232a1dbe9ac94a2da3f"
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
