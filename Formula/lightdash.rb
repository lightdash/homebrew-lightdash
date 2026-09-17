class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.250.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.250.2/lightdash-cli-2.250.2-macos-arm64.tar.gz"
      sha256 "b068cb4924d5db4a6959e61c1f101e5a564d6d9a6650adc303154d12207e9e57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.250.2/lightdash-cli-2.250.2-macos-x64.tar.gz"
      sha256 "276964a1105e5aad779b53a55265aa207270b9876d264f66c85807676486334d"
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
