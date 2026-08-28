class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.45.0/lightdash-cli-2.45.0-macos-arm64.tar.gz"
      sha256 "e180acb8ad5e6e021c1a472d39f38a50d506b82e2bf6281362c218a55716a560"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.45.0/lightdash-cli-2.45.0-macos-x64.tar.gz"
      sha256 "b3d14da1e4588815a571e056246d187ac45ce9f7f247f6b52e97b2bfdce05c24"
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
