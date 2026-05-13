class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2926.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2926.0/lightdash-cli-0.2926.0-macos-arm64.tar.gz"
      sha256 "38e44abcb761b33314c9f7742a482d4a49302898b878db702da7e2b417d31d0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2926.0/lightdash-cli-0.2926.0-macos-x64.tar.gz"
      sha256 "d9c2a44f79c241d90ad2beffebd9019446f1225b575b41e71700179140e3d13f"
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
