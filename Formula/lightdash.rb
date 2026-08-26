class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.13.1/lightdash-cli-2.13.1-macos-arm64.tar.gz"
      sha256 "c07d697d40363fe1a155119885bffd30607215c12cb42f7a3a9726508a992428"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.13.1/lightdash-cli-2.13.1-macos-x64.tar.gz"
      sha256 "c149b4951b52dff276791f4456246fc86cd9028a66254d49c211e712a05f517b"
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
