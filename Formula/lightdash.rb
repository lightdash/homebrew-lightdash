class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.109.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.109.0/lightdash-cli-1.109.0-macos-arm64.tar.gz"
      sha256 "613fffbcc58c1e72a4543edc8177f2ed8ef7819ea5fecaa95163f0c2bfa00e1c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.109.0/lightdash-cli-1.109.0-macos-x64.tar.gz"
      sha256 "b5d90db6c8b03b01fcf962be26471eb3fd99b19acf831c4037e6fb11350013e5"
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
