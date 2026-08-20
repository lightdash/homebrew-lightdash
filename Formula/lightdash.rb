class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.214.0/lightdash-cli-1.214.0-macos-arm64.tar.gz"
      sha256 "cc2e2992fe204870c87e2304948685f22bc9ffd9323740308f3e16b1c0e2e703"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.214.0/lightdash-cli-1.214.0-macos-x64.tar.gz"
      sha256 "12a38180f4ac3d2eaf2d6367aa2fa7914c30ed9367f25332315e183bc24d1c5f"
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
